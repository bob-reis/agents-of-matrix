#!/bin/bash
set -euo pipefail

# Lê JSON do Claude Code via STDIN
json_input=$(cat || true)
command=$(echo "$json_input" | jq -r '.tool_input.command // empty' 2>/dev/null || true)

if [ -z "${command:-}" ]; then
  exit 0
fi

if echo "$command" | grep -qi "ghost\|cti\|ioc"; then
  echo "[hook] CTI: verificando feeds" >&2
  
  # Verifica se é comando relacionado ao IOCs
  if echo "$command" | grep -qi "ioc\|indicator"; then
    echo "[hook] IOCs: validando indicadores de comprometimento" >&2
  fi
  
  # Verifica se é comando relacionado ao TTPs
  if echo "$command" | grep -qi "ttp\|mitre\|att&ck"; then
    echo "[hook] TTPs: verificando mapeamento MITRE ATT&CK" >&2
  fi
  
  # Verifica se é comando relacionado ao Attribution
  if echo "$command" | grep -qi "attribution\|threat.*actor\|apt"; then
    echo "[hook] Attribution: analisando threat actors e campanhas" >&2
  fi
  
  # Verifica se é comando relacionado ao Ghost
  if echo "$command" | grep -qi "ghost"; then
    echo "[hook] Ghost: validando fontes de threat intelligence" >&2
  fi
  
  # Verifica se é comando relacionado ao CTI feeds
  if echo "$command" | grep -qi "feed\|intel.*source"; then
    echo "[hook] CTI Feeds: verificando conectividade e qualidade dos feeds" >&2
  fi
fi