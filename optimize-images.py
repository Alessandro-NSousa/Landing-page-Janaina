#!/usr/bin/env python3
"""
Script para otimizar imagens da landing page
Requer: pip install Pillow

Uso:
    python optimize-images.py
"""

import os
from PIL import Image
import sys

def optimize_image(input_path, output_path, target_width=600, quality=85):
    """
    Otimiza uma imagem: redimensiona e comprime
    
    Args:
        input_path: Caminho da imagem original
        output_path: Caminho da imagem otimizada
        target_width: Largura alvo (mantém proporção)
        quality: Qualidade JPEG (1-100, padrão 85)
    """
    try:
        img = Image.open(input_path)
        
        # Converter RGBA para RGB se necessário
        if img.mode in ('RGBA', 'LA', 'P'):
            background = Image.new('RGB', img.size, (200, 200, 200))
            background.paste(img, mask=img.split()[-1] if img.mode == 'RGBA' else None)
            img = background
        
        # Redimensionar mantendo proporção
        wpercent = (target_width / float(img.size[0]))
        hsize = int((float(img.size[1]) * float(wpercent)))
        img = img.resize((target_width, hsize), Image.Resampling.LANCZOS)
        
        # Salvar otimizado
        img.save(output_path, 'JPEG', quality=quality, optimize=True)
        
        original_size = os.path.getsize(input_path)
        optimized_size = os.path.getsize(output_path)
        reduction = ((original_size - optimized_size) / original_size) * 100
        
        print(f"✅ {os.path.basename(input_path)}")
        print(f"   Dimensões: {img.size[0]}x{img.size[1]}")
        print(f"   Tamanho original: {original_size/1024:.1f}KB")
        print(f"   Tamanho otimizado: {optimized_size/1024:.1f}KB")
        print(f"   Redução: {reduction:.1f}%\n")
        
        return True
    except Exception as e:
        print(f"❌ Erro ao processar {input_path}: {str(e)}\n")
        return False

def main():
    images_dir = os.path.dirname(os.path.abspath(__file__))
    
    print("=" * 50)
    print("OTIMIZADOR DE IMAGENS - Landing Page")
    print("=" * 50 + "\n")
    
    # Imagens esperadas
    images = {
        'janaina-hero.jpg': (600, 800),
        'janaina-sobre.jpg': (600, 700),
    }
    
    optimized_count = 0
    
    for image_name, (width, height) in images.items():
        input_path = os.path.join(images_dir, image_name)
        output_path = os.path.join(images_dir, f'optimized_{image_name}')
        
        if os.path.exists(input_path):
            print(f"Processando: {image_name}")
            if optimize_image(input_path, output_path, target_width=width):
                optimized_count += 1
        else:
            print(f"⚠️  {image_name} não encontrado em {images_dir}\n")
    
    print("=" * 50)
    if optimized_count > 0:
        print(f"✅ {optimized_count} imagem(ns) otimizada(s) com sucesso!")
        print("\nPróximos passos:")
        print("1. Verifique as imagens otimizadas em 'optimized_*.jpg'")
        print("2. Se estiver satisfeito, renomeie:")
        print("   - optimized_janaina-hero.jpg → janaina-hero.jpg")
        print("   - optimized_janaina-sobre.jpg → janaina-sobre.jpg")
        print("3. Atualize a landing page")
    else:
        print("⚠️  Nenhuma imagem foi otimizada.")
        print("Certifique-se de que as imagens estão no diretório:")
        print(f"   {images_dir}")
    print("=" * 50)

if __name__ == '__main__':
    try:
        from PIL import Image
    except ImportError:
        print("❌ Erro: Pillow não está instalado")
        print("Instale com: pip install Pillow")
        sys.exit(1)
    
    main()
