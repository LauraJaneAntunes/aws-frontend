#!/bin/bash
# Script para preparar o servidor EC2 para receber deploys

echo "🚀 Configurando servidor EC2 para deploy..."

# Atualizar sistema
sudo apt update && sudo apt upgrade -y

# Instalar Docker
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh

# Adicionar usuário ao grupo docker
sudo usermod -aG docker $USER

# Iniciar e habilitar Docker
sudo systemctl start docker
sudo systemctl enable docker

# Verificar instalação
docker --version

echo "✅ Servidor EC2 configurado com sucesso!"
echo "⚠️  Faça logout e login novamente para aplicar as permissões do Docker"
