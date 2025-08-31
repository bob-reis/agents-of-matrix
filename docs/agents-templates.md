# Modelos de Agentes (Templates Avançados)

> Use estes templates como base. Coloque-os em `.claude/agents/*.md`.

## Estrutura (frente YAML + prompt)
```yaml
---
name: nome-do-agente
description: Quando usar e objetivo principal
tools: Read, Grep, Edit, Write, Bash    # escolha mínima necessária
model: sonnet                           # ou opus/haiku quando fizer sentido
---

Defina papel, entregáveis, políticas de segurança, workflow, checklists e formatos de saída (arquivos/relatórios/diffs).
```

## Padrões Recomendados
- Escopo mínimo de ferramentas (menor privilégio)
- Plano antes de executar (Plan/Auto Plan)
- Diffs claros e lista de comandos
- Saídas padronizadas (estruturas e arquivos previsíveis)

## Exemplos de Saída
- `relatorios/seguranca/security-analysis.md`
- `threat-modeling/threat-model.json` (OWASP Threat Dragon)
- `docs/arquitetura/decisoes/ADR-XYZ.md`
- `tests/…` + instruções de execução
