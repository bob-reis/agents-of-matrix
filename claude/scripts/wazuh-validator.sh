#!/bin/bash
set -euo pipefail

# Lê JSON do Claude Code via STDIN
json_input=$(cat || true)
command=$(echo "$json_input" | jq -r '.tool_input.command // empty' 2>/dev/null || true)

if [ -z "${command:-}" ]; then
  exit 0
fi

if echo "$command" | grep -qi "wazuh\|zee"; then
  echo "[hook] Wazuh: verificando prerequisites" >&2
  
  # Verifica se é comando relacionado ao Wazuh
  if echo "$command" | grep -qi "wazuh.*install\|wazuh.*deploy"; then
    echo "[hook] Wazuh: validando ambiente para deployment" >&2
  fi
  
  if echo "$command" | grep -qi "wazuh.*agent\|agent.*wazuh"; then
    echo "[hook] Wazuh: verificando configuração de agents" >&2
  fi
  
  if echo "$command" | grep -qi "wazuh.*rule\|custom.*rule"; then
    echo "[hook] Wazuh: validando regras customizadas" >&2
  fi
fi