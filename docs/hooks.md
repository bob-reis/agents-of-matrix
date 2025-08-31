# Hooks e Automação

> Acione rotinas inteligentes antes/depois do uso de ferramentas do Claude Code.

## Conceito
Hooks reagem a eventos como: `PreToolUse`, `PostToolUse`, `UserPromptSubmit`, `Stop`.

## Exemplo de Escopo com Dispatcher
`.claude/hooks.json` (neste projeto) aponta para `scripts/smart-hook-dispatcher.sh`:

```json
{
  "hooks": {
    "PreToolUse": [
      {
        "matcher": "Bash",
        "hooks": [
          { "type": "command", "command": "./scripts/smart-hook-dispatcher.sh" }
        ]
      }
    ]
  }
}
```

`scripts/smart-hook-dispatcher.sh` (roteia por conteúdo do comando):
```bash
#!/bin/bash
json_input=$(cat)
command=$(echo "$json_input" | jq -r '.tool_input.command // empty')

if [ -z "$command" ]; then exit 0; fi

if echo "$command" | grep -q "npm run deploy"; then
  ./scripts/pre-deployment-checks.sh <<< "$json_input"
fi

if echo "$command" | grep -q "npm run build"; then
  ./scripts/build-validator.sh <<< "$json_input"
fi
```

## Boas Práticas
- Despache por conteúdo (evite hooks amplos que rodem sempre).
- Valide códigos de saída em `PostToolUse`.
- Paralelize tarefas independentes quando fizer sentido.

## Outros Gatilhos
- `PostToolUse`: avaliar `.tool_response.exit_code` e logs para decidir ações (ex.: enviar alerta se build falhar).
- `UserPromptSubmit`: normalizar prompts (injetar checklist) ou registrar métricas de uso.
- `Stop`: sumarizar sessão e registrar artefatos (diffs, relatórios) em diretório de auditoria.

## Exemplo de PostToolUse
```json
{
  "hooks": {
    "PostToolUse": [
      {
        "matcher": "Bash(npm run build)",
        "hooks": [
          { "type": "command", "command": "./scripts/build-post-checks.sh" }
        ]
      }
    ]
  }
}
```
