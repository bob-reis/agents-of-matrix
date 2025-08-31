# Agentes: Manuais e Customizados

> Escale sua inteligência: orquestre sub-agentes e crie agentes custom com contexto isolado.

## Sub-Agentes Manuais (Task)
```text
Use 3 sub-agentes para analisar:
1) Revisão de segurança em auth.ts
2) Performance do cache
3) Type checking em utils.ts
```
Vantagens: controle direto, previsibilidade. Desvantagens: orquestração manual e mesmo contexto.

## Agentes Customizados (automáticos)
Formato (YAML no topo do arquivo):
```yaml
---
name: seu-agente
description: Quando invocar e o que faz
tools: Read, Grep, Bash   # Opcional
model: sonnet             # Opcional: sonnet | opus | haiku
---

Seu prompt de sistema especializado aqui.
```

Onde ficam: `.claude/agents/*.md` (veja exemplos prontos neste repositório).

Benefícios:
- Contexto isolado por agente (evita poluição de contexto global).
- Controle de ferramentas por papel (segurança e teste de confiabilidade).
- Delegação automática pelo Claude de acordo com a descrição e contexto.

## Padrões Recomendados
- Especifique o papel, limites e objetivos.
- Liste steps de validação (checklists) para previsibilidade.
- Restrinja ferramentas ao mínimo necessário por agente.
- Prefira Sonnet 4 para dia-a-dia; Opus 4.1 apenas quando essencial.

## Split Role Sub-Agents (exemplos de perspectivas)
- Engenharia: senior engineer, refactorer, performance, qa
- Segurança: red team, blue team, threat modeler (neo)
- Produto/UX: designer, noob user, accessibility (persephone)

## Templates Avançados
- Consulte `docs/agents-templates.md` para padrões de saída e estrutura
- Inspire-se em `.claude/agents/neo.md`, `morpheus.md`, `smith.md`, `trinity.md` etc.
