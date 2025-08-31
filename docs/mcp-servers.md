# 🔌 MCP Servers - Extensões Poderosas para Claude Code

O **Model Context Protocol (MCP)** permite que o Claude Code se conecte a ferramentas externas, APIs e sistemas através de servidores especializados. Esta é uma das funcionalidades mais poderosas do Claude Code.

## 🚀 O que são MCP Servers?

MCP Servers são **conectores inteligentes** que estendem as capacidades do Claude Code, permitindo:

- 📱 **Integração com redes sociais** (WhatsApp, Twitter, Reddit)
- 🗄️ **Acesso a bancos de dados** (PostgreSQL, MongoDB, Supabase)
- ☁️ **Conexão com cloud services** (AWS, Google Cloud, Azure)
- 🛠️ **Ferramentas de desenvolvimento** (GitHub, Docker, Kubernetes)
- 🌐 **Automação web** (Puppeteer, browser automation)
- 🎨 **Criação de conteúdo** (Blender, design tools)

## 📋 MCP Servers Essenciais

### 📱 **Comunicação e Social Media**

#### WhatsApp MCP
```json
{
  "whatsapp": {
    "command": "go",
    "args": ["run", "./whatsapp-mcp-server"],
    "description": "Integração completa com WhatsApp Web"
  }
}
```

**Funcionalidades:**
- ✅ Buscar mensagens no histórico pessoal
- ✅ Enviar mensagens para contatos e grupos
- ✅ Suporte completo a mídias (imagens, vídeos, documentos)
- ✅ Gerenciamento de contatos
- ✅ Armazenamento local em SQLite
- ✅ Privacy-first (mensagens só enviadas quando acessadas)

**Instalação:**
```bash
git clone https://github.com/lharries/whatsapp-mcp.git
cd whatsapp-mcp
go build -o whatsapp-mcp-server

# Configurar no Claude Code
# Adicionar ao settings.local.json:
```

#### Twitter/X MCP
```json
{
  "twitter": {
    "command": "node",
    "args": ["twitter-mcp-server/dist/index.js"],
    "description": "Publicação e busca no Twitter/X"
  }
}
```

**Funcionalidades:**
- ✅ Postar tweets diretamente do Claude Code
- ✅ Buscar conteúdo por tópicos e hashtags
- ✅ Acesso a dados em tempo real
- ✅ Autenticação OAuth segura
- ✅ Integração com Twitter Developer API

#### Reddit MCP
```json
{
  "reddit": {
    "command": "python",
    "args": ["reddit-mcp-server/main.py"],
    "description": "Navegação e interação com Reddit"
  }
}
```

**Funcionalidades:**
- ✅ Buscar posts por subreddit
- ✅ Comentar e votar em posts
- ✅ Acessar trending topics
- ✅ Análise de sentiment em comentários

### 🗄️ **Bancos de Dados**

#### PostgreSQL MCP
```json
{
  "postgresql": {
    "command": "npx",
    "args": ["@modelcontextprotocol/server-postgres"],
    "env": {
      "POSTGRES_CONNECTION_STRING": "postgresql://user:pass@localhost:5432/db"
    }
  }
}
```

#### MongoDB MCP
```json
{
  "mongodb": {
    "command": "python",
    "args": ["mongodb-mcp-server/server.py"],
    "env": {
      "MONGODB_URI": "mongodb://localhost:27017"
    }
  }
}
```

#### Supabase MCP
```json
{
  "supabase": {
    "command": "npx",
    "args": ["@supabase/mcp-server"],
    "env": {
      "SUPABASE_URL": "https://your-project.supabase.co",
      "SUPABASE_ANON_KEY": "your-anon-key"
    }
  }
}
```

### ☁️ **Cloud Services**

#### AWS MCP
```json
{
  "aws": {
    "command": "python",
    "args": ["aws-mcp-server/server.py"],
    "env": {
      "AWS_ACCESS_KEY_ID": "your-access-key",
      "AWS_SECRET_ACCESS_KEY": "your-secret-key",
      "AWS_DEFAULT_REGION": "us-east-1"
    }
  }
}
```

#### Google Cloud MCP
```json
{
  "gcp": {
    "command": "python",
    "args": ["gcp-mcp-server/server.py"],
    "env": {
      "GOOGLE_APPLICATION_CREDENTIALS": "path/to/service-account.json"
    }
  }
}
```

### 🛠️ **Desenvolvimento**

#### GitHub MCP
```json
{
  "github": {
    "command": "npx",
    "args": ["@modelcontextprotocol/server-github"],
    "env": {
      "GITHUB_PERSONAL_ACCESS_TOKEN": "your-github-token"
    }
  }
}
```

#### Docker MCP
```json
{
  "docker": {
    "command": "python",
    "args": ["docker-mcp-server/server.py"],
    "description": "Gerenciamento de containers Docker"
  }
}
```

#### Puppeteer MCP
```json
{
  "puppeteer": {
    "command": "node",
    "args": ["puppeteer-mcp-server/dist/index.js"],
    "description": "Automação web com Puppeteer"
  }
}
```

### 🎨 **Criação de Conteúdo**

#### Blender MCP
```json
{
  "blender": {
    "command": "python",
    "args": ["blender-mcp-server/server.py"],
    "description": "Automação de criação 3D no Blender"
  }
}
```

#### Desktop Commander MCP
```json
{
  "desktop": {
    "command": "python",
    "args": ["desktop-commander-mcp/server.py"],
    "description": "Automação de desktop e aplicações"
  }
}
```

## 🎯 Configuração Completa

### arquivo `settings.local.json` Exemplo:

```json
{
  "allowedTools": ["Read", "Edit", "Bash", "Grep", "Glob"],
  "planMode": "auto",
  "outputStyle": "concise",
  "mcpServers": {
    "whatsapp": {
      "command": "go",
      "args": ["run", "./whatsapp-mcp-server"],
      "env": {
        "WHATSAPP_SESSION_PATH": "./whatsapp-session"
      }
    },
    "twitter": {
      "command": "node",
      "args": ["twitter-mcp-server/dist/index.js"],
      "env": {
        "TWITTER_API_KEY": "your-api-key",
        "TWITTER_API_SECRET": "your-api-secret",
        "TWITTER_ACCESS_TOKEN": "your-access-token",
        "TWITTER_ACCESS_TOKEN_SECRET": "your-access-token-secret"
      }
    },
    "github": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-github"],
      "env": {
        "GITHUB_PERSONAL_ACCESS_TOKEN": "your-github-token"
      }
    },
    "postgresql": {
      "command": "npx",
      "args": ["@modelcontextprotocol/server-postgres"],
      "env": {
        "POSTGRES_CONNECTION_STRING": "postgresql://user:pass@localhost:5432/db"
      }
    },
    "puppeteer": {
      "command": "node",
      "args": ["puppeteer-mcp-server/dist/index.js"]
    }
  }
}
```

## 🚀 Exemplos Práticos de Uso

### 📱 Automação WhatsApp
```bash
# Usando o agente Agent Smith para automação
claude code --agent agent-smith "Configure notificações WhatsApp para alertas de deploy"

# Usando MCP diretamente
claude code "Envie mensagem no WhatsApp para o grupo 'DevTeam' informando que o deploy foi realizado com sucesso"
```

### 🐦 Gestão de Social Media
```bash
# Postar updates automáticos
claude code "Publique no Twitter sobre o lançamento da nova feature com hashtags #desenvolvimento #inovacao"

# Monitorar menções
claude code "Busque menções da nossa empresa no Twitter nas últimas 24 horas"
```

### 🗄️ Operações de Banco
```bash
# Com agente Oracle para documentação de dados
claude code --agent oracle "Documente a estrutura do banco PostgreSQL e gere diagramas ER"

# Análise de dados
claude code "Analise os dados de usuários na tabela 'users' e identifique padrões de uso"
```

### 🛠️ DevOps Automation
```bash
# Com Agent Smith
claude code --agent agent-smith "Use o GitHub MCP para criar PR automático com as mudanças realizadas"

# Monitoramento Docker
claude code "Liste todos os containers em execução e identifique os que estão consumindo mais recursos"
```

## 📚 Recursos e Referências

### 🌟 Awesome MCP Servers
- **Repository:** [punkpeye/awesome-mcp-servers](https://github.com/punkpeye/awesome-mcp-servers)
- **67.2k ⭐** - Diretório definitivo de servidores MCP
- **Web Interface:** [glama.ai/mcp/servers](https://glama.ai/mcp/servers)

### 📖 Documentação Oficial
- **MCP Specification:** [modelcontextprotocol.io](https://modelcontextprotocol.io)
- **Claude Code MCP Guide:** [docs.anthropic.com/claude-code](https://docs.anthropic.com/claude-code)

### 🛠️ Desenvolvimento de MCP Servers
- **Python SDK:** `pip install mcp-python`
- **TypeScript SDK:** `npm install @modelcontextprotocol/sdk`
- **Go SDK:** Disponível via Go modules

## ⚠️ Considerações de Segurança

### 🔐 Boas Práticas
1. **Variáveis de Ambiente:** Nunca commite credenciais no código
2. **Permissões Mínimas:** Configure apenas as permissões necessárias
3. **Validação de Input:** Sempre valide dados externos
4. **Rate Limiting:** Implemente limitação de taxa para APIs
5. **Auditoria:** Mantenha logs de todas as operações MCP

### 🚨 Alertas de Segurança
- ⚠️ **WhatsApp MCP:** Requer acesso à sua conta pessoal
- ⚠️ **Social Media MCPs:** Podem publicar conteúdo em seu nome
- ⚠️ **Database MCPs:** Têm acesso direto aos seus dados
- ⚠️ **Cloud MCPs:** Podem gerar custos significativos

## 🎯 Próximos Passos

1. **Escolha seus MCPs:** Baseado nas suas necessidades
2. **Configure credenciais:** Seguindo as práticas de segurança
3. **Teste gradualmente:** Comece com operações de baixo risco
4. **Monitore uso:** Acompanhe custos e performance
5. **Expanda capacidades:** Adicione novos MCPs conforme necessário

Os MCP Servers transformam o Claude Code em uma **plataforma de automação universal**. Com eles, você pode integrar qualquer sistema, automatizar qualquer processo e estender as capacidades de IA para todos os aspectos do seu workflow de desenvolvimento! 🚀