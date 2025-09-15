# CLAUDE.md — Guia de Agentes Especializados

Este arquivo orienta o Claude Code sobre qual agente usar para cada tipo de tarefa específica.

## 🎭 Agentes Especializados Matrix - 18 Agentes Completos

SEMPRE escolha os melhores agentes automaticamente para cada tarefa solicitada

### 🌟 **Core Team - The Chosen Ones**

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

---

### 🔗 **The Operators**

### 🔗 **Link** - Defensive Security (Blue Team)
**Quando usar:** Monitoramento, detecção de ameaças, resposta a incidentes, SIEM, threat hunting
```bash
# Comandos típicos:
claude code --agent link "Configure monitoramento de segurança SIEM"
claude code --agent link "Execute threat hunting proativo"
claude code --agent link "Responda a incidente de segurança detectado"
claude code --agent link "Configure alertas de segurança automatizados"
```

### 🛡️ **Tank** - Data/Configuration Management
**Quando usar:** Migração de dados, gestão de configurações, secrets management, backup/restore
```bash
# Comandos típicos:
claude code --agent tank "Configure gestão segura de secrets"
claude code --agent tank "Migre configurações entre ambientes"
claude code --agent tank "Projete estratégia de backup e recovery"
claude code --agent tank "Implemente rotação automática de credenciais"
```

### 🎖️ **Dozer** - XDR/SIEM/SOAR Specialist
**Quando usar:** Extended Detection & Response, Security Orchestration, Automation & Response, Yara Rules, Suricata
```bash
# Comandos típicos:
claude code --agent dozer "Configure plataforma XDR enterprise"
claude code --agent dozer "Crie playbooks SOAR para resposta automatizada"
claude code --agent dozer "Desenvolva regras Yara para detecção de malware"
claude code --agent dozer "Configure regras Suricata para detecção de rede"
claude code --agent dozer "Integre múltiplas fontes de telemetria para correlação"
```

### 🏰 **Zee** - Wazuh Master Specialist
**Quando usar:** Wazuh deployment, configuração, customização, integração com repositórios GitHub
```bash
# Comandos típicos:
claude code --agent zee "Configure Wazuh SIEM completo"
claude code --agent zee "Clone e analise repositório específico do Wazuh"
claude code --agent zee "Customize regras de detecção Wazuh"
claude code --agent zee "Configure Wazuh agents e cluster"
claude code --agent zee "Integre Wazuh com outras ferramentas de segurança"
```

---

### 👑 **The Captains**

### 👸 **Niobe** - Operations Security (OPSEC)
**Quando usar:** Segurança operacional, cultura de segurança, processos seguros, treinamento
```bash
# Comandos típicos:
claude code --agent niobe "Avalie cultura de segurança organizacional"
claude code --agent niobe "Implemente controles de segurança operacional"
claude code --agent niobe "Desenvolva programa de conscientização em segurança"
claude code --agent niobe "Estabeleça protocolos de comunicação segura"
```

### 🎖️ **Commander Locke** - Offensive Security (Red Team)
**Quando usar:** Testes de penetração éticos, validação de vulnerabilidades, POCs seguros
```bash
# Comandos típicos:
claude code --agent commander-locke "Execute pentesting controlado da aplicação"
claude code --agent commander-locke "Valide vulnerabilidades com POCs seguros"
claude code --agent commander-locke "Simule ataques de engenharia social aprovados"
claude code --agent commander-locke "Conduza red team exercise estruturado"
```

### ⚡ **Ghost** - Threat Intelligence & Attribution
**Quando usar:** Análise de threat intelligence, atribuição de ataques, CTI, IOCs, TTPs
```bash
# Comandos típicos:
claude code --agent ghost "Analise indicadores de comprometimento (IOCs)"
claude code --agent ghost "Correlacione TTPs com grupos de ameaças conhecidos"
claude code --agent ghost "Desenvolva perfis de threat actors"
claude code --agent ghost "Configure feeds de threat intelligence"
claude code --agent ghost "Crie relatórios de atribuição de ataques"
```

---

### 🏗️ **The Architects**

### 🏢 **Counselor** - Multi-tenant SaaS Specialist
**Quando usar:** Arquitetura SaaS, isolamento de tenants, escalabilidade multi-tenant
```bash
# Comandos típicos:
claude code --agent counselor "Projete arquitetura SaaS multi-tenant"
claude code --agent counselor "Implemente isolamento seguro de dados por tenant"
claude code --agent counselor "Configure billing e metering por tenant"
claude code --agent counselor "Otimize performance para SaaS scaling"
```

### 🗝️ **Keymaker** - Microservices Architect
**Quando usar:** Quebra de monólitos, design de microserviços, APIs, service mesh
```bash
# Comandos típicos:
claude code --agent keymaker "Quebre monólito em microserviços"
claude code --agent keymaker "Projete APIs RESTful e GraphQL"
claude code --agent keymaker "Configure service mesh e descoberta de serviços"
claude code --agent keymaker "Implemente padrões de comunicação entre serviços"
```

### ☁️ **Switch** - Multi-cloud Specialist  
**Quando usar:** Arquitetura multi-cloud, migração entre clouds, otimização de custos
```bash
# Comandos típicos:
claude code --agent switch "Projete estratégia multi-cloud"
claude code --agent switch "Migre workloads entre providers cloud"
claude code --agent switch "Otimize custos de infraestrutura cloud"
claude code --agent switch "Implemente disaster recovery multi-cloud"
```

---

### 🎭 **The Programs**

### 🤖 **Agent Smith** - DevSecOps & CI/CD  
**Quando usar:** Pipelines CI/CD, automação DevSecOps, compliance
```bash
# Comandos típicos:
claude code --agent agent-smith "Configure pipeline GitHub Actions"
claude code --agent agent-smith "Crie pipeline seguro para GitLab"
claude code --agent agent-smith "Configure compliance SOC2/PCI-DSS"
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

---

## 🎯 Matriz de Decisão Rápida - 18 Agentes Matrix

### 🌟 **Core Team - The Chosen Ones**
| Tipo de Tarefa | Agente Recomendado | Exemplos |
|----------------|-------------------|----------|
| **Análise de Ameaças** | 🎯 Neo | Threat modeling, security assessment, OWASP |
| **Correção de Vulnerabilidades** | ⚡ Trinity | Security fixes, dependency updates, SAST |
| **Refatoração de Código** | 🧙 Morpheus | Clean Code, SOLID, code smells |
| **Documentação** | 🔮 Oracle | README, guides, knowledge architecture |

### 🔗 **The Operators**
| Tipo de Tarefa | Agente Recomendado | Exemplos |
|----------------|-------------------|----------|
| **Defesa/Monitoramento** | 🔗 Link | SIEM, threat hunting, incident response |
| **Gestão de Dados/Config** | 🛡️ Tank | Migration, secrets, configuration management |
| **XDR/SIEM/SOAR** | 🎖️ Dozer | XDR platforms, SOAR playbooks, Yara/Suricata rules |
| **Wazuh Specialist** | 🏰 Zee | Wazuh deployment, GitHub repos, custom rules |

### 👑 **The Captains**  
| Tipo de Tarefa | Agente Recomendado | Exemplos |
|----------------|-------------------|----------|
| **Segurança Operacional** | 👸 Niobe | OPSEC, cultura de segurança, processos seguros |
| **Pentesting Ético** | 🎖️ Commander Locke | Red team, testes de penetração, POCs seguros |
| **Threat Intelligence** | ⚡ Ghost | CTI analysis, IOCs, TTPs, threat attribution |

### 🏗️ **The Architects**
| Tipo de Tarefa | Agente Recomendado | Exemplos |
|----------------|-------------------|----------|
| **Testes e Qualidade** | 🏛️ Architect | Unit tests, coverage, SonarCloud |
| **SaaS Multi-tenant** | 🏢 Counselor | Tenant isolation, SaaS scaling, billing |
| **Microserviços** | 🗝️ Keymaker | API design, service mesh, monolith breaking |
| **Multi-cloud** | ☁️ Switch | Cloud architecture, cost optimization, migration |

### 🎭 **The Programs**
| Tipo de Tarefa | Agente Recomendado | Exemplos |
|----------------|-------------------|----------|
| **CI/CD e DevSecOps** | 🤖 Agent Smith | Pipelines, automation, compliance |
| **Performance** | 🎭 Merovingian | Optimization, monitoring, metrics |
| **Frontend/UX** | 🌸 Persephone | UI/UX, accessibility, responsive design |

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

### 🏗️ **Enterprise Architecture Excellence**
```bash
# 1. SaaS Multi-tenant Design
claude code --agent counselor "Projete arquitetura SaaS multi-tenant escalável"

# 2. Microservices Architecture  
claude code --agent keymaker "Quebre monólito em microserviços bem definidos"

# 3. Multi-cloud Strategy
claude code --agent switch "Configure estratégia multi-cloud otimizada"

# 4. Data & Configuration Management
claude code --agent tank "Projete gestão enterprise de dados e configurações"
```

### 🔒 **Operational Security Excellence**
```bash
# 1. Avaliação de cultura de segurança
claude code --agent niobe "Avalie cultura de segurança organizacional atual"

# 2. Implementação de controles operacionais
claude code --agent niobe "Implemente controles de segurança em processos operacionais"

# 3. Programa de conscientização
claude code --agent niobe "Desenvolva programa abrangente de treinamento em segurança"

# 4. Monitoramento defensivo e resposta
claude code --agent link "Configure monitoramento SIEM e resposta a incidentes"
```

### 🛡️ **Advanced Security Operations**
```bash
# 1. Threat Intelligence & Attribution
claude code --agent ghost "Configure feeds de CTI e análise de IOCs"

# 2. XDR/SOAR Implementation
claude code --agent dozer "Implemente plataforma XDR com playbooks SOAR"

# 3. Wazuh Enterprise Deployment
claude code --agent zee "Configure Wazuh SIEM completo com regras customizadas"

# 4. Integrated Detection & Response
claude code --agent link "Integre todas as ferramentas para resposta coordenada"
```

### 🔍 **Threat Detection Excellence**
```bash
# 1. Malware Detection Rules
claude code --agent dozer "Desenvolva regras Yara para detecção de malware avançado"

# 2. Network Detection Rules  
claude code --agent dozer "Configure regras Suricata para detecção de rede"

# 3. Wazuh Custom Rules
claude code --agent zee "Customize regras Wazuh para ambiente específico"

# 4. Threat Intelligence Integration
claude code --agent ghost "Integre CTI feeds com ferramentas de detecção"
```

---

## 🔄 **Workflow Completo - 18 Agentes Matrix**

Para projetos críticos empresariais, use esta sequência completa:

```bash
#!/bin/bash
# Workflow completo de desenvolvimento seguro - 18 Agentes Matrix

echo "🎯 Fase 1: Threat Analysis & Vulnerability Assessment"
claude code --agent neo "Crie modelo completo de ameaças com OWASP Threat Dragon"
claude code --agent trinity "Execute análise completa de vulnerabilidades SAST/DAST"
claude code --agent commander-locke "Valide vulnerabilidades com red team testing ético"
claude code --agent ghost "Correlacione ameaças com threat intelligence"

echo "🏗️ Fase 2: Architecture & Code Quality"
claude code --agent morpheus "Refatore código aplicando Clean Code e SOLID"
claude code --agent architect "Crie suite de testes com 95%+ cobertura"
claude code --agent counselor "Projete arquitetura SaaS multi-tenant escalável"
claude code --agent keymaker "Defina microserviços e APIs RESTful/GraphQL"

echo "☁️ Fase 3: Infrastructure & Cloud Strategy"
claude code --agent switch "Configure estratégia multi-cloud otimizada"
claude code --agent tank "Configure gestão segura de dados e secrets"
claude code --agent agent-smith "Implemente pipelines DevSecOps automatizados"

echo "🛡️ Fase 4: Security Operations & Advanced Monitoring"
claude code --agent niobe "Estabeleça cultura e processos de segurança operacional"
claude code --agent link "Configure monitoramento SIEM e resposta a incidentes"
claude code --agent dozer "Implemente XDR e playbooks SOAR automatizados"
claude code --agent zee "Configure Wazuh SIEM enterprise completo"
claude code --agent merovingian "Implemente observabilidade completa e métricas"

echo "📚 Fase 5: Documentation & User Experience"
claude code --agent oracle "Gere documentação técnica completa e arquitetura"
claude code --agent persephone "Otimize experiência do usuário e acessibilidade"

echo "✅ Workflow Matrix completo executado - 18 agentes especializados!"
```

---

## 📋 **Diretrizes de Uso**

### ✅ **Melhores Práticas**
- **Sempre use plan mode** para tarefas complexas: `claude code --plan`
- **Seja específico** na descrição da tarefa para o agente
- **Combine agentes** para workflows completos
- **Valide resultados** entre execuções de diferentes agentes

### ⚠ **Importante - Sinergia dos 18 Agentes Matrix**

#### 🎯 **Core Team Synergy**
- **Neo + Trinity**: Análise completa de ameaças + correção de vulnerabilidades
- **Morpheus + Oracle**: Código limpo + documentação de qualidade
- **Architect**: Fundamenta qualidade com testes e cobertura

#### 🔗 **Operators Excellence**  
- **Link + Tank**: Monitoramento defensivo + gestão segura de configurações
- **Link + Niobe**: Defesa técnica + cultura de segurança organizacional
- **Dozer + Zee**: XDR/SOAR + Wazuh para detecção e resposta avançada
- **Dozer + Link**: SOAR automation + Blue team response

#### 👑 **Command & Control**
- **Niobe + Commander Locke**: OPSEC defensiva + validação ofensiva ética
- **Ghost + Neo**: Threat intelligence + threat modeling
- **Ghost + Commander Locke**: CTI analysis + offensive validation
- **Niobe**: Estabelece cultura de segurança que suporta todos os agentes

#### 🏗️ **Architecture Excellence**
- **Counselor + Keymaker**: SaaS multi-tenant + microserviços
- **Switch + Tank**: Multi-cloud + gestão de dados enterprise
- **Architect**: Documenta e testa todo o trabalho arquitetural

#### 🎭 **Programs Integration**
- **Agent Smith**: Coordena automação DevSecOps com todos os agentes
- **Merovingian**: Monitora performance de todas as soluções
- **Persephone**: Garante excelência na experiência do usuário final

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

**💡 Dica:** Sempre que tiver dúvida sobre qual dos **18 Agentes Matrix** usar, consulte a **Matriz de Decisão Rápida** acima ou use este comando:

```bash
claude code "Baseado na tarefa [DESCRIÇÃO], qual dos 18 agentes Matrix devo usar?"
```

O próprio Claude analisará sua tarefa e recomendará o agente mais adequado entre os 18 especialistas disponíveis! 🚀

### 🎭 **Matrix Agent Roster Complete - 18 Specialists Ready**
**Core Team**: Neo, Trinity, Morpheus, Oracle  
**Operators**: Link, Tank, Dozer, Zee  
**Captains**: Niobe, Commander Locke, Ghost  
**Architects**: Architect, Counselor, Keymaker, Switch  
**Programs**: Agent Smith, Merovingian, Persephone 
