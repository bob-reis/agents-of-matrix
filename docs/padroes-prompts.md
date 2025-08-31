# Padrões de Prompts e Estilos de Saída

> Torne as respostas previsíveis, úteis e fáceis de auditar.

## Estilos de Saída
- Resumo executivo + checklist + próximos passos
- Diffs e comandos antes de executar
- Tabelas para comparações/decisões
- Mermaid para diagramas de arquitetura/fluxo

## Instruction Mirrors (TODOs)
- Use listas de verificação para alinhar expectativas
- Exemplo: “Antes de editar, gere: (1) plano (2) diffs previstos (3) comandos (4) rollback”

## Tight Feedback Loops
- Iterações curtas com validação frequente
- Preferir “aplique patch pequeno, rode teste rápido, valide”

## Context Hygiene
- Fatiar contexto (evitar colagens gigantes)
- Referir arquivos por caminhos e trechos específicos
- Usar `Glob`, `Grep` e leitura seletiva

## Anti-padrões
- Pedidos genéricos sem artefatos esperados
- Execução sem plano/diff/comandos
- Escopo amplo de ferramentas desnecessário
