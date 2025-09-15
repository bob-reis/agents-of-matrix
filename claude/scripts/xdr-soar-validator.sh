#!/bin/bash
set -euo pipefail

# Lê JSON do Claude Code via STDIN
json_input=$(cat || true)
command=$(echo "$json_input" | jq -r '.tool_input.command // empty' 2>/dev/null || true)

if [ -z "${command:-}" ]; then
  exit 0
fi

if echo "$command" | grep -qi "soar\|xdr\|dozer"; then
  echo "[hook] XDR/SOAR: validando environment" >&2
  
  # Verifica se é comando relacionado ao XDR
  if echo "$command" | grep -qi "xdr.*deploy\|xdr.*config"; then
    echo "[hook] XDR: verificando plataforma e conectores" >&2
  fi
  
  # Verifica se é comando relacionado ao SOAR
  if echo "$command" | grep -qi "soar.*playbook\|playbook.*soar"; then
    echo "[hook] SOAR: validando playbooks e automação" >&2
  fi
  
  # Verifica se é comando relacionado ao Yara/Suricata
  if echo "$command" | grep -qi "yara\|suricata"; then
    echo "[hook] Detection Rules: verificando regras Yara/Suricata" >&2
  fi
  
  # Verifica se é comando relacionado ao Dozer
  if echo "$command" | grep -qi "dozer"; then
    echo "[hook] Dozer: validando infraestrutura de detecção avançada" >&2
  fi
fi