# MCP e Integrações

> Conecte o Claude Code a ferramentas externas via Model Context Protocol.

## Onde configurar
- Projeto: `.claude/settings.local.json`
- Usuário (global): `~/.claude.json`

> Preferimos o arquivo do projeto para reprodutibilidade entre times.

## Exemplo (arquivo do usuário — referência)
```json
{
  "projects": {
    "/caminho/para/projeto": {
      "mcpServers": {
        "filesystem": {
          "command": "npx",
          "args": ["-y", "@modelcontextprotocol/server-filesystem", "/Users/username/Desktop", "/caminho/permitido"]
        },
        "memory": { "command": "npx", "args": ["-y", "@modelcontextprotocol/server-memory"] },
        "fetch": { "command": "npx", "args": ["-y", "@modelcontextprotocol/server-fetch"] }
      }
    }
  }
}
```

## Recomendações de Segurança
- Restrinja diretórios do `filesystem` ao mínimo necessário.
- Avalie servidores MCP de terceiros antes de habilitar.
- Teste primeiro em Plan Mode.

## Casos de Uso
- Filesystem: leitura segura de diretórios externos.
- Memory: memória leve de sessão.
- Fetch: análise de conteúdo web em auditorias e pesquisas.

## Exemplos de Configuração por Projeto
`.claude/settings.local.json`:
```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "./", "./referencias"]
    },
    "memory": { "command": "npx", "args": ["-y", "@modelcontextprotocol/server-memory"] },
    "fetch": { "command": "npx", "args": ["-y", "@modelcontextprotocol/server-fetch"] }
  }
}
```

## Dicas
- Use caminhos relativos no projeto para portabilidade.
- Evite expor diretórios sensíveis (home, secrets, chaves) no filesystem MCP.
