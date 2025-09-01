# CLAUDE.md — Guia de Agentes Especializados

Este arquivo orienta o Claude Code sobre qual agente usar para cada tipo de tarefa específica.

## 🎭 Agentes Disponíveis e Suas Especialidades

### 🎯 **Neo** - Threat Modeling & Security Analysis
**Quando usar:** Análise de ameaças, modelagem de segurança, OWASP Threat Dragon
```bash
# Comandos típicos:
claude code --agent neo "Crie modelo de ameaças para este projeto"
claude code --agent neo "Analise as ameaças de segurança da API"
claude code --agent neo "Gere arquivo compatível com OWASP Threat Dragon"
```

### ⚡ **Trinity** - Vulnerability Scanning & Remediation  
**Quando usar:** Detecção e correção de vulnerabilidades, SAST/DAST, security fixes
```bash
# Comandos típicos:
claude code --agent trinity "Escaneie vulnerabilidades no código"
claude code --agent trinity "Corrija vulnerabilidades críticas encontradas"
claude code --agent trinity "Analise dependências em busca de CVEs"
```

### 🧙 **Morpheus** - Clean Code & Refactoring
**Quando usar:** Limpeza de código, eliminação de technical debt, aplicação de SOLID
```bash
# Comandos típicos:
claude code --agent morpheus "Refatore este código aplicando Clean Code"
claude code --agent morpheus "Elimine duplicação de código"
claude code --agent morpheus "Aplique princípios SOLID"
```

### 🔮 **Oracle** - Documentation & Knowledge
**Quando usar:** Criação de documentação, README, guias técnicos, arquitetura de informação
```bash
# Comandos típicos:
claude code --agent oracle "Crie documentação completa do projeto"
claude code --agent oracle "Atualize README com exemplos detalhados"
claude code --agent oracle "Gere guia de arquitetura de informação"
```

### 🤖 **Agent Smith** - DevSecOps & CI/CD
**Quando usar:** Pipelines CI/CD, automação DevSecOps, compliance
```bash
# Comandos típicos:
claude code --agent agent-smith "Configure pipeline GitHub Actions"
claude code --agent agent-smith "Crie pipeline seguro para GitLab"
claude code --agent agent-smith "Configure compliance SOC2/PCI-DSS"
```

### 🏗 **Architect** - Testing & Quality Architecture
**Quando usar:** Testes unitários, cobertura, integração com SonarCloud, arquitetura de testes
```bash
# Comandos típicos:
claude code --agent architect "Crie testes para alcançar 95% de cobertura"
claude code --agent architect "Configure relatórios para SonarCloud"
claude code --agent architect "Projete arquitetura de testes abrangente"
```

### 🎭 **Merovingian** - Performance & Observability
**Quando usar:** Otimização de performance, monitoramento, métricas
```bash
# Comandos típicos:
claude code --agent merovingian "Otimize performance da aplicação"
claude code --agent merovingian "Configure monitoramento"
claude code --agent merovingian "Analise gargalos de performance"
```

### 🌸 **Persephone** - UX/Frontend Quality
**Quando usar:** Interface do usuário, acessibilidade, experiência do usuário
```bash
# Comandos típicos:
claude code --agent persephone "Melhore acessibilidade da interface"
claude code --agent persephone "Otimize experiência do usuário"
claude code --agent persephone "Valide conformidade WCAG"
```

### 🎯 **Red Team** - Ethical Penetration Testing
**Quando usar:** Testes de penetração éticos, validação de vulnerabilidades, POCs seguros
```bash
# Comandos típicos:
claude code --agent red-team "Execute pentesting controlado da aplicação"
claude code --agent red-team "Valide vulnerabilidades com POCs seguros"
claude code --agent red-team "Simule ataques de engenharia social aprovados"
```

### 🛡 **Blue Team** - Defensive Security
**Quando usar:** Monitoramento, detecção de ameaças, resposta a incidentes, hardening
```bash
# Comandos típicos:
claude code --agent blue-team "Configure monitoramento de segurança SIEM"
claude code --agent blue-team "Execute threat hunting proativo"
claude code --agent blue-team "Responda a incidente de segurança detectado"
```

### 🔒 **OPSEC** - Operations Security
**Quando usar:** Segurança operacional, proteção de informações sensíveis, cultura de segurança, comunicações seguras, prevenção de vazamento de informações
```bash
# Comandos típicos:
claude code --agent opsec "Avalie cultura de segurança organizacional"
claude code --agent opsec "Implemente controles de segurança em processos operacionais"
claude code --agent opsec "Desenvolva programa de conscientização em segurança"
claude code --agent opsec "Estabeleça protocolos de comunicação segura"
claude code --agent opsec "Configure proteção contra vazamento de informações"
```

---

## 🎯 Matriz de Decisão Rápida

| Tipo de Tarefa | Agente Recomendado | Exemplos |
|----------------|-------------------|----------|
| **Análise de Ameaças** | 🎯 Neo | Threat modeling, security assessment, OWASP |
| **Correção de Vulnerabilidades** | ⚡ Trinity | Security fixes, dependency updates, SAST |
| **Refatoração de Código** | 🧙 Morpheus | Clean Code, SOLID, code smells |
| **Documentação** | 🔮 Oracle | README, guides, knowledge architecture |
| **CI/CD e DevOps** | 🤖 Agent Smith | Pipelines, automation, compliance |
| **Testes e Qualidade** | 🏗 Architect | Unit tests, coverage, SonarCloud |
| **Performance** | 🎭 Merovingian | Optimization, monitoring, metrics |
| **Frontend/UX** | 🌸 Persephone | UI/UX, accessibility, responsive |
| **Pentesting Ético** | 🎯 Red Team | Testes de penetração, POCs seguros |
| **Defesa/Monitoramento** | 🛡 Blue Team | SIEM, threat hunting, incident response |
| **Segurança Operacional** | 🔒 OPSEC | Cultura de segurança, treinamentos, processos |

---

## 🚀 Workflows Integrados Recomendados

### 🛡 **Security-First Development**
```bash
# 1. Análise de ameaças
claude code --agent neo "Crie modelo de ameaças"

# 2. Implementação segura  
claude code --agent trinity "Implemente mitigações de segurança"

# 3. Pipeline seguro
claude code --agent agent-smith "Configure CI/CD com security gates"

# 4. Cultura e processos seguros
claude code --agent opsec "Estabeleça cultura de segurança e processos operacionais"
```

### 🏗 **Code Quality Excellence**
```bash
# 1. Limpeza de código
claude code --agent morpheus "Refatore aplicando Clean Code"

# 2. Cobertura de testes
claude code --agent oracle "Crie testes com 95%+ cobertura"

# 3. Documentação
claude code --agent architect "Documente todas as mudanças"
```

### ⚡ **Performance & UX Optimization**
```bash
# 1. Otimização de performance
claude code --agent merovingian "Otimize performance da aplicação"

# 2. Melhoria de UX
claude code --agent persephone "Melhore experiência do usuário"

# 3. Validação com testes
claude code --agent oracle "Crie testes de performance"
```

### 🔒 **Operational Security Excellence**
```bash
# 1. Avaliação de cultura de segurança
claude code --agent opsec "Avalie cultura de segurança organizacional atual"

# 2. Implementação de controles operacionais
claude code --agent opsec "Implemente controles de segurança em processos operacionais"

# 3. Programa de conscientização
claude code --agent opsec "Desenvolva programa abrangente de treinamento em segurança"

# 4. Monitoramento e melhoria contínua
claude code --agent opsec "Configure métricas e KPIs de segurança operacional"
```

---

## 🔄 **Workflow Completo (Todos os Agentes)**

Para projetos críticos, use esta sequência completa:

```bash
#!/bin/bash
# Workflow completo de desenvolvimento seguro

echo "🎯 Fase 1: Análise de Segurança"
claude code --agent neo "Crie modelo completo de ameaças"
claude code --agent trinity "Escaneie e corrija vulnerabilidades"

echo "🧹 Fase 2: Qualidade de Código"
claude code --agent morpheus "Refatore código aplicando Clean Code"
claude code --agent oracle "Crie testes com 95%+ cobertura"

echo "🚀 Fase 3: Automação e Deploy"
claude code --agent agent-smith "Configure pipelines DevSecOps"
claude code --agent merovingian "Configure monitoramento"

echo "🔒 Fase 4: Segurança Operacional"
claude code --agent opsec "Estabeleça cultura de segurança e processos operacionais"
claude code --agent blue-team "Configure monitoramento defensivo e resposta a incidentes"

echo "📚 Fase 5: Experiência e Documentação"
claude code --agent persephone "Otimize UX e acessibilidade"
claude code --agent architect "Crie documentação completa"

echo "✅ Workflow completo com segurança operacional executado!"
```

---

## 📋 **Diretrizes de Uso**

### ✅ **Melhores Práticas**
- **Sempre use plan mode** para tarefas complexas: `claude code --plan`
- **Seja específico** na descrição da tarefa para o agente
- **Combine agentes** para workflows completos
- **Valide resultados** entre execuções de diferentes agentes

### ⚠ **Importante**
- Neo e Trinity trabalham em conjunto para segurança completa
- OPSEC estabelece a cultura e processos de segurança que suportam todos os outros agentes
- Blue Team e OPSEC se complementam: defesa técnica + cultura organizacional
- Morpheus e Oracle se complementam para qualidade total
- Agent Smith coordena automação com todos os outros agentes
- Architect documenta o trabalho de todos os agentes

### 🎯 **Quando NÃO Usar Agentes**
- Tarefas simples de 1-2 comandos (use Claude diretamente)
- Perguntas básicas sobre código (use Claude diretamente)
- Leitura simples de arquivos (use Claude diretamente)

---

## 🔧 **Configuração de Projeto**

Coloque este arquivo na raiz do seu projeto como `CLAUDE.md` ou em `.claude/CLAUDE.md` para que o Claude Code sempre saiba qual agente usar para cada tipo de tarefa.

### Estrutura Recomendada:
```
projeto/
├── .claude/
│   ├── CLAUDE.md              # Este arquivo
│   ├── settings.local.json    # Configurações do projeto  
│   ├── hooks.json            # Automações
│   └── agents/               # Agentes customizados
├── docs/                     # Documentação técnica
└── README.md                 # Documentação principal
```

---

**💡 Dica:** Sempre que tiver dúvida sobre qual agente usar, consulte a **Matriz de Decisão Rápida** acima ou use este comando:

```bash
claude code "Baseado na tarefa [DESCRIÇÃO], qual agente devo usar?"
```

O próprio Claude analisará sua tarefa e recomendará o agente mais adequado! 🚀 
