# Boas Práticas

> Regras simples que mantêm velocidade com segurança.

## Geral
- Planeje antes de executar (Plan/Auto Plan Mode).
- Preferir mudanças pequenas e verificáveis.
- Sempre peça diffs e lista de comandos antes de rodar.
- Documente decisões no contexto do PR/commit.

## Pedidos ao Claude
- Especifique artefatos de saída esperados (arquivos, testes, scripts).
- Traga exemplos mínimos e reprodutíveis.
- Declare limites claros (sem mexer em X, sem Bash, etc.).

## Segurança
- Minimizar `allowedTools` por papel.
- Review periódico de configurações `.claude`.
- Rotina de verificação em hooks para deploy/build.
