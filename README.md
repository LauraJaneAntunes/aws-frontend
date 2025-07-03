# AWS Frontend

Frontend para gerenciamento de APIs MongoDB, MySQL e S3 da AWS.

## 🚀 Features

- ✅ CRUD completo de usuários (MongoDB)
- ✅ CRUD completo de produtos (MySQL) com edição
- ✅ Upload/Download de arquivos S3
- ✅ Interface responsiva com sistema de debug
- ✅ Deploy automatizado com GitHub Actions
- ✅ Containerização com Docker
- ✅ Sistema de diagnóstico integrado

## 🛠️ Tecnologias

- **Frontend:** HTML, CSS, JavaScript
- **Backend:** Node.js API (repositório separado)
- **Banco de dados:** MongoDB, MySQL
- **Storage:** AWS S3
- **Deploy:** Docker + GitHub Actions + EC2

## 📁 Estrutura do Projeto

```
aws-frontend/
├── index.html          # Interface principal
├── Dockerfile          # Configuração do container
├── README.md          # Documentação
├── setup-ec2.sh       # Script de configuração EC2
├── .github/workflows/ # Pipeline CI/CD
├── .dockerignore      # Arquivos ignorados no Docker
└── .gitignore         # Arquivos ignorados no Git
```

## 📦 Deploy

O projeto possui pipeline automático de CI/CD que:

1. Faz build da imagem Docker
2. Envia para Docker Hub
3. Deploy automático no EC2

### Variáveis necessárias (GitHub Secrets):

- `GH_TOKEN`: Token do GitHub
- `DOCKERHUB_USERNAME`: Usuário Docker Hub
- `DOCKER_PASSWORD`: Senha Docker Hub  
- `EC2_HOST`: IP do servidor EC2
- `EC2_USER`: Usuário EC2
- `EC2_PRIVATE_KEY`: Chave SSH do EC2

## 🔧 Desenvolvimento Local

```bash
# Servir arquivos localmente
python -m http.server 8000
# ou
npx serve .
```

## 📝 Configuração do EC2

Execute o script `setup-ec2.sh` no servidor para instalar as dependências:

```bash
chmod +x setup-ec2.sh
./setup-ec2.sh
```

## 🌐 Acesso

Após o deploy: `http://SEU_IP_EC2:3000`

<!-- Pipeline configurado e pronto para deploy -->
