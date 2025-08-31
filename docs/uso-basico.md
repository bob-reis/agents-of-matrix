# Uso Básico do Claude Code

> Modos de uso, exemplos rápidos e shortcuts úteis para acelerar o fluxo.

## Modos de Uso
- REPL interativo: `claude`
- One-shot (pontual): `claude -p "Comando aqui"`

## Exemplos Rápidos (One-shot)
```bash
claude -p "Liste os arquivos deste diretório"
claude -p "O que esse projeto faz?"
claude -p "Mostre o ponto de entrada principal"
claude -p "Quais dependências existem?"
claude -p "Como rodo este projeto?"
```

## Operações Essenciais
```text
# Ler arquivo
read caminho/para/arquivo

# Editar arquivo (modo assistido)
edit src/components/Button.js

# Criar arquivo
write src/components/NovoComponente.js

# Procurar padrões
find todos os componentes React

# Explicar código
explain como a autenticação funciona

# Adicionar funcionalidade
add um toggle de dark mode

# Corrigir bug
fix memory leak no data fetcher

# Escrever testes
write unit tests para Button
```

## Dicas de Produtividade
- Prefira Plan Mode em tarefas maiores (segurança e previsibilidade).
- Faça perguntas específicas e mostre contexto (arquivos, trechos, logs).
- Use `/model` para alternar entre Sonnet/Opus/Haiku conforme a tarefa.
- Experimente sub-agentes para análises paralelas (ver docs/agentes.md).

## Fluxos Avançados
- Sub-agentes paralelos (Task):
  - “Use 3 sub-agentes: 1) segurança em auth.ts 2) performance do cache 3) type checking em utils.ts”
- Split role sub-agents: peça papéis distintos (senior engineer, security expert, qa, refactorer) para obter múltiplas perspectivas simultâneas.
- Delegação automática por agentes custom: configure `.claude/agents/*.md` e o Claude roteia tarefas para especialistas.

## Segurança no Dia a Dia
- Plan Mode para “pesquisar/planejar” e só então executar.
- Antes de `Write/Edit/Bash`, exija: plano, diffs previstos e lista de comandos.
- Mantenha `allowedTools` mínimo e iterativo.
