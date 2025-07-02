#!/bin/bash
# Script de diagnóstico para verificar o deploy

echo "🔍 Diagnóstico do Deploy - Frontend"
echo "=================================="

echo "1. Verificando containers Docker:"
docker ps -a

echo -e "\n2. Verificando logs do container:"
docker logs frontend-container 2>/dev/null || echo "Container 'frontend-container' não encontrado"

echo -e "\n3. Verificando portas em uso:"
sudo netstat -tlnp | grep :3000 || echo "Porta 3000 não está sendo usada"

echo -e "\n4. Verificando imagens Docker:"
docker images | grep aws-frontend

echo -e "\n5. Verificando conectividade de rede:"
curl -I http://localhost:3000 2>/dev/null || echo "Serviço não responde na porta 3000"

echo -e "\n6. Verificando status do Docker:"
sudo systemctl status docker

echo -e "\n=================================="
echo "✅ Diagnóstico concluído!"
