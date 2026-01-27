#!/bin/bash

echo "=========================================="
echo "  DIAGNÓSTICO DE IMAGENS"
echo "=========================================="
echo ""

IMAGES_DIR="assets/images"

echo "📁 Verificando diretório: $IMAGES_DIR"
echo ""

if [ ! -d "$IMAGES_DIR" ]; then
    echo "❌ Diretório não encontrado!"
    exit 1
fi

echo "📸 Arquivos encontrados:"
echo ""

# Listar todos os arquivos
ls -lh "$IMAGES_DIR/" | tail -n +2 | while read line; do
    filename=$(echo "$line" | awk '{print $NF}')
    size=$(echo "$line" | awk '{print $5}')
    
    if [[ $filename == janaina-* ]]; then
        echo "  ✅ $filename ($size)"
    else
        echo "  📄 $filename"
    fi
done

echo ""
echo "=========================================="

# Verificar se as imagens esperadas existem
echo "✓ Verificação:"
echo ""

if [ -f "$IMAGES_DIR/janaina-hero.png" ]; then
    size=$(ls -lh "$IMAGES_DIR/janaina-hero.png" | awk '{print $5}')
    echo "  ✅ janaina-hero.png ($size)"
else
    echo "  ❌ janaina-hero.png (FALTANDO)"
fi

if [ -f "$IMAGES_DIR/janaina-sobre.jpg" ]; then
    size=$(ls -lh "$IMAGES_DIR/janaina-sobre.jpg" | awk '{print $5}')
    echo "  ✅ janaina-sobre.jpg ($size)"
else
    echo "  ❌ janaina-sobre.jpg (FALTANDO)"
fi

echo ""
echo "=========================================="
echo ""
echo "SOLUÇÃO RÁPIDA:"
echo ""
echo "1. Abra a página no navegador"
echo "2. Pressione F12 para abrir DevTools"
echo "3. Vá para a aba 'Network'"
echo "4. Atualize a página (F5)"
echo "5. Procure por 'janaina-hero' e 'janaina-sobre'"
echo "6. Verifique o status (200 = OK, 404 = erro)"
echo ""
echo "Se vir 404, as imagens estão em lugar errado."
echo "=========================================="
