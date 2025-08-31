# Instalação e Configuração

> Configure tudo rapidamente: chave API, modelo, diretórios extras, e ambiente do projeto.

## Pré-requisitos
- Conta e chave da API Anthropic (Claude)
- Node.js ou runtime capaz de executar `npx`
- Terminal com acesso ao projeto

## Variáveis de Ambiente
```bash
# Recomendado: shell profile (~/.bashrc, ~/.zshrc)
export ANTHROPIC_API_KEY="coloque-sua-chave"
# Modelo padrão (veja docs/modelos-e-custos.md)
export ANTHROPIC_MODEL="claude-3-5-haiku-20241022"
```

> Dica: defina o modelo por CLI quando necessário: `claude --model claude-sonnet-4-20250514`

## Seleção de Modelo (rápido)
- Sonnet 4: uso diário, equilíbrio custo/qualidade
- Opus 4.1: planejamento/pesquisa complexa (use com Plan Mode)
- Haiku 3.5: consultas rápidas/custo mínimo

Troca interativa: `/model` (inclui “Opus Plan Mode”).

## Estrutura Recomendada do Projeto
```
.
├─ .claude/
│  ├─ agents/
│  ├─ hooks.json
│  └─ settings.local.json
├─ docs/
├─ scripts/
└─ CLAUDE.md
```

## Arquivo `.claude/settings.local.json`
- Define ferramentas permitidas, MCP servers e escopo de diretórios.
- Padrão seguro para times de segurança (veja `.claude/settings.local.json`).

Exemplo de `allowedTools` progressivo:
```json
{
  "allowedTools": [
    "Task", "LS", "Read", "Glob", "Grep",
    "Edit", "MultiEdit", "Write",
    "WebFetch", "WebSearch",
    "Bash(git log:*)" // evite Bash amplo; prefira whitelists
  ]
}
```

## Diretórios Adicionais (Extended Workspace)
```bash
# No startup
claude --add-dir ../outro-projeto

# No meio da sessão
/add-dir ../outro-projeto
```

## Validando o Setup
1) `echo $ANTHROPIC_API_KEY` retorna algo (sem expor publicamente).
2) Abra o Claude na raiz: `claude`.
3) Rode `/permissions` e confira `allowedTools`.
4) Leia `CLAUDE.md` e siga os comandos do projeto.

> Caso use hooks que chamam scripts, garanta permissões de execução: `chmod +x scripts/*.sh`.

## Locais de Config Possíveis (referência)
- Projeto: `.claude/settings.local.json`
- Usuário (global): `~/.claude.json`
- Legado: `~/.claude/settings.json` e `~/.claude/settings.local.json`

Recomendação: priorize config no projeto para reprodutibilidade de time; use o global apenas quando necessário.
