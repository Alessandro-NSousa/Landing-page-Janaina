#!/bin/bash

# Script de teste para verificar estrutura de imagens
# Uso: bash check-images.sh

echo "=========================================="
echo "  Verificador de Imagens"
echo "  Landing Page Janaina Santana"
echo "=========================================="
echo ""

IMAGES_DIR="assets/images"
REQUIRED_IMAGES=("janaina-hero.jpg" "janaina-sobre.jpg")

echo "📁 Verificando diretório: $IMAGES_DIR"
echo ""

if [ ! -d "$IMAGES_DIR" ]; then
    echo "❌ Diretório não encontrado!"
    exit 1
fi

# Contar imagens
echo "📸 Imagens encontradas:"
found_count=0

for img in "${REQUIRED_IMAGES[@]}"; do
    if [ -f "$IMAGES_DIR/$img" ]; then
        size=$(du -h "$IMAGES_DIR/$img" | cut -f1)
        dimensions=$(identify "$IMAGES_DIR/$img" 2>/dev/null | awk '{print $3}')
        echo "  ✅ $img"
        echo "     Tamanho: $size"
        if [ ! -z "$dimensions" ]; then
            echo "     Dimensões: $dimensions"
        fi
        ((found_count++))
    else
        echo "  ❌ $img (FALTANDO)"
    fi
done

echo ""
echo "=========================================="
echo "Resultado: $found_count/${#REQUIRED_IMAGES[@]} imagens encontradas"
echo "=========================================="

if [ $found_count -eq ${#REQUIRED_IMAGES[@]} ]; then
    echo "✅ Tudo certo! A landing page está pronta."
else
    echo "⚠️  Faltam imagens. Veja IMAGENS.md para instruções."
fi
