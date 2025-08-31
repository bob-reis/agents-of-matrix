# Threat Modeling (OWASP Threat Dragon)

> Guia prático para modelagem de ameaças integrada com Claude Code e agentes customizados.

## Objetivos
- Detectar arquitetura, fluxos e fronteiras de confiança
- Aplicar STRIDE por componente/fluxo
- Gerar JSON compatível com OWASP Threat Dragon
- Planejar e implementar mitigações
- Documentar e validar continuamente

## Estrutura de Saída
```
threat-modeling/
├─ threat-model.json        # modelo compatível com Threat Dragon
├─ security-analysis.md     # análise detalhada
├─ mitigation-plan.md       # plano de implementação
└─ changelog.md             # histórico de evolução do modelo
```

## Elementos Threat Dragon
- `tm.Actor`, `tm.Process`, `tm.Store`, `tm.Flow`, `tm.Boundary`
- Propriedades por elemento: `threats[]`, `hasOpenThreats`, `outOfScope`, `isEncrypted`, etc.

## Fluxo com Agente (ex.: neo)
1) Descoberta de arquitetura (componentes, integrações, fronteiras)
2) Modelagem STRIDE (por elemento)
3) Geração do `threat-model.json`
4) Mitigações no código + validações
5) Documentação e integração no ciclo (hooks/CI)

## Integração no Processo
- Pre-commit: “atualize o modelo se mudanças afetarem superfícies/fluxos”
- Pre-push: “falhe se houver ameaças críticas abertas”
- CI: executar análise periódica e publicar relatório

## Dicas
- Revisar periodicamente severidades e status
- Mapear mitigação ↔ ameaça ↔ diff/commit
- Versionar arquivos da pasta `threat-modeling/`
