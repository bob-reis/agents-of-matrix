# Frameworks de Trabalho

> Mecanismos práticos para planejar, executar e auditar com Claude Code.

## Plan Mode e Auto Plan
- Separar planejamento de execução
- Gatilhos automáticos via system prompt
- Ver docs/plan-mode.md

## Permutation Framework
- Geração de alternativas com critérios (tempo/risco/impacto)
- Escolha guiada por evidências antes de executar

## Split Role Sub-Agents
- Papéis complementares (security, qa, refactorer, architect)
- Execução paralela com `Task`

## Ultrapensar (Ultrathink) com Custos Controlados
- Brainstorm das abordagens em Sonnet 4
- Se necessário, aprofundar com Opus 4.1 (Plan Mode)

## Tight Feedback Loops
- Pequenas mudanças + validações rápidas + checkpoints
- Gatilhos via hooks para build/test/deploy
