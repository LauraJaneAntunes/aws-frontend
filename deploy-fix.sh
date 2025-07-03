#!/bin/bash
# Script para deploy da versão corrigida

echo "🚀 Deploy da Versão Corrigida - MySQL Fix"
echo "========================================"

echo "1. Verificando arquivos modificados..."
git status

echo -e "\n2. Commitando correções..."
git add .
git commit -m "🔧 Fix: Correção da conexão MySQL com debug system

- Implementado error handling robusto
- Adicionado sistema de debug integrado  
- Suporte a diferentes formatos de response
- Interface de diagnóstico melhorada
- Logs detalhados para troubleshooting

Resolves: Problemas de conexão MySQL com SDK AWS"

echo -e "\n3. Fazendo push para trigger do deploy..."
git push origin main

echo -e "\n4. O GitHub Actions irá fazer o deploy automaticamente"
echo "   Aguarde alguns minutos e verifique:"
echo "   📱 Frontend: http://lja-frontend.duckdns.org"
echo "   🔧 Debug: Ative o Debug Mode na interface"

echo -e "\n✅ Deploy iniciado com sucesso!"
