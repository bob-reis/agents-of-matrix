#!/bin/bash
set -euo pipefail

# Lê JSON do Claude Code via STDIN
json_input=$(cat || true)
command=$(echo "$json_input" | jq -r '.tool_input.command // empty' 2>/dev/null || true)

if [ -z "${command:-}" ]; then
  exit 0
fi

if echo "$command" | grep -q "npm run deploy"; then
  echo "[hook] Pré-deploy: validações" >&2
  ./scripts/pre-deployment-checks.sh <<< "$json_input" || true
fi

if echo "$command" | grep -q "npm run build"; then
  echo "[hook] Build: validações" >&2
  ./scripts/build-validator.sh <<< "$json_input" || true
fi

# Validações dos novos agentes Matrix
if echo "$command" | grep -qi "wazuh\|zee"; then
  ./scripts/wazuh-validator.sh <<< "$json_input" || true
fi

if echo "$command" | grep -qi "soar\|xdr\|dozer"; then
  ./scripts/xdr-soar-validator.sh <<< "$json_input" || true
fi

if echo "$command" | grep -qi "ghost\|cti\|ioc"; then
  ./scripts/threat-intel-validator.sh <<< "$json_input" || true
fi
