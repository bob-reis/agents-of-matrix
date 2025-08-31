# Plan Mode e Auto Plan Mode

> Separe planejamento de execução para segurança, previsibilidade e custo menor.

## Plan Mode (manual)
- Ativar: pressione Shift+Tab duas vezes.
- Enquanto ativo: somente leitura/pesquisa (Read, LS, Glob, Grep, WebFetch, WebSearch, etc.)
- Desativar: Shift+Tab novamente.

Benefícios:
- Evita edições/comandos não intencionais.
- Respostas consistentes, concisas e aprováveis.
- Mais velocidade e economia (menos iteração destrutiva).

## Opus Plan Mode (inteligente e econômico)
- Use `/model` e selecione: "Usar Opus 4.1 no planejamento, Sonnet 4 na execução".
- Opus 4.1 para pesquisa/estratégia; Sonnet 4 para implementar.

## Auto Plan Mode (automático via system prompt)
- Instrução extra no system prompt para o Claude entrar em plano automaticamente antes de ações destrutivas.
- Elimina fricção mental: o agente se planeja quando detecta risco.

Exemplo de orientação (conceitual):
```text
Se a tarefa envolver Write/Edit/Bash/MCP com efeitos, primeiro proponha um plano, solicite aprovação e só então execute.
```

## Boas Práticas
- Combine Plan Mode manual para pesquisas longas e Auto Plan para mitigação automática.
- Mantenha planos curtos e verificáveis (checklist, diffs, comandos listados).
- Ao sair do Plan Mode, faça confirmação dupla do que será executado.

## Ferramentas no Plan Mode
- Disponíveis: `Read`, `LS`, `Glob`, `Grep`, `Task`, `WebFetch`, `WebSearch`, `NotebookRead`.
- Restritas: `Edit`, `MultiEdit`, `Write`, `Bash`, `NotebookEdit`, MCP que alteram estado.

## Dica: Opus Plan Mode
Selecione “Opus Plan Mode” em `/model`: Opus 4.1 apenas para planejamento; Sonnet 4 para execução, equilibrando custo e qualidade.

## Auto Plan via CLI (exemplo de system prompt)
Use `--append-system-prompt` ao iniciar:
```bash
claude --append-system-prompt "Se a ação envolver Write/Edit/Bash/MCP com efeitos, gere primeiro um plano estruturado, solicite aprovação e só execute após confirmação explícita."
```
