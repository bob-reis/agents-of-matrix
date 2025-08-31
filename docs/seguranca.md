# Segurança: Red Team e Blue Team

> Fluxos e checklists para operar com Claude Code de forma segura, auditável e eficiente.

## Princípios Gerais
- Menor privilégio: limite ferramentas e escopos.
- Plan/Auto Plan Mode por padrão.
- Auditoria: registre planos, diffs e comandos antes de executar.

## Blue Team: Checklist de Revisão
- [ ] Confirmar Plan Mode ao iniciar análise.
- [ ] Rodar buscas direcionadas (Grep/Glob) por padrões sensíveis.
- [ ] Validar dependências e versões (CVEs conhecidos) – priorize libs expostas.
- [ ] Revisar superfícies de entrada/saída (autenticação, autorização, logs).
- [ ] Checar configurações de secrets (env, vaults, rotacionamento).
- [ ] Agir via agentes especializados com escopo limitado.

## Red Team: Táticas Controladas
- Simule inputs maliciosos (fuzzing leve) em Plan Mode antes de propor POCs.
- Explore validações insuficientes (injeção, path traversal, SSRF) em sandbox.
- Use agentes com ferramentas mínimas, sem Write/Bash até aprovação.
- Registre hipóteses e evidências com links para trechos de código revisados.

## Permissões e Ferramentas
- `Bash`: perigoso — prefira padrões de whitelist (ex.: `Bash(git log:*)`).
- `Write/Edit`: somente após plano aprovado e com diffs explícitos.
- `MCP`: restrinja diretórios e avalie servidores de terceiros.

## Playbooks
- Auditoria de Autenticação e Autorização
  - Mapeie fluxos de login, refresh, escopos e revogação.
  - Busque padrões de bypass e escalonamento de privilégio.
- Revisão de Exposição de Dados
  - Conferir logs, dados sensíveis, PII e políticas de retenção.
- Superfície Web/API
  - CORS, rate-limit, headers de segurança, esquema de erros.

## OWASP Top 10 (mapeamento prático)
- A01: Broken Access Control → verifique RBAC/ABAC, checagens server-side
- A02: Cryptographic Failures → TLS, armazenamento de credenciais, rotação de chaves
- A03: Injection → SQL/NoSQL/OS/LDAP; parametrização e validação
- A04: Insecure Design → falta de limites/contratos; abuse cases
- A05: Security Misconfiguration → headers, CORS, permissões default
- A06: Vulnerable and Outdated Components → inventário/atualizações
- A07: Identification and Authentication Failures → MFA, sessão, reset seguro
- A08: Software and Data Integrity Failures → supply-chain, assinaturas, CI
- A09: Security Logging and Monitoring Failures → logs suficientes, alertas
- A10: Server-Side Request Forgery (SSRF) → whitelists, metadados bloqueados

## Greps Úteis (pontos de atenção)
```bash
# credenciais/tokens expostos
rg -n "(API_KEY|SECRET|PASSWORD|TOKEN)\s*[=:]" -g '!*package-lock*'

# desativando validações de TLS
rg -n "(rejectUnauthorized: false|sslVerify=false)"

# serialização perigosa
rg -n "eval\(|Function\(" -g '!node_modules'

# sanitização e parametrização ausentes em queries
rg -n "(SELECT .*\+|find\(\{.*\+.*\})" -g '!node_modules'
```

## Integração com Processo (hooks/CI)
- Pre-commit: gatilho para greps rápidos e lints de segurança
- Pre-push: falhar se riscos críticos não mitigados
- CI: pipeline com varreduras (SAST/DAST) e publicação de relatório

## Colaboração Red/Blue
- Red sugere hipóteses e POCs seguras; Blue prioriza mitigação e monitora
- Compartilhar artefatos: ameaças ↔ diffs ↔ testes ↔ métricas
