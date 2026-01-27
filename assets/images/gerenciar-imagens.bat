@echo off
REM Gerenciador de Imagens - Landing Page Janaina Santana
REM Este script ajuda a processar e otimizar as imagens

setlocal enabledelayedexpansion

echo.
echo ========================================
echo   GERENCIADOR DE IMAGENS
echo   Landing Page Janaina Santana
echo ========================================
echo.

echo Opcoes:
echo 1 - Abrir gerenciador de upload (browser)
echo 2 - Ver instrucoes de imagens
echo 3 - Listar imagens no diretorio
echo 4 - Abrir pasta de imagens
echo 0 - Sair
echo.

set /p choice="Escolha uma opcao: "

if "%choice%"=="1" (
    echo Abrindo gerenciador de upload...
    start upload-manager.html
    timeout /t 2
    goto menu
)

if "%choice%"=="2" (
    echo.
    echo ========================================
    echo INSTRUCOES DE IMAGENS
    echo ========================================
    echo.
    echo 1. DIMENSOES RECOMENDADAS:
    echo    - Hero: 600x800px (corpo inteiro)
    echo    - Sobre: 600x700px (rosto/busto)
    echo.
    echo 2. ARQUIVOS ESPERADOS:
    echo    - janaina-hero.jpg
    echo    - janaina-sobre.jpg
    echo.
    echo 3. FORMATO:
    echo    - JPG (melhor compatibilidade e tamanho)
    echo    - PNG (se tiver transparencia)
    echo.
    echo 4. TAMANHO ARQUIVO:
    echo    - Maximo: 200KB cada
    echo    - Use TinyJPG para comprimir
    echo.
    echo 5. OTIMIZACAO:
    echo    Execute: python optimize-images.py
    echo.
    echo ========================================
    echo.
    pause
    goto menu
)

if "%choice%"=="3" (
    echo.
    echo Imagens encontradas:
    echo.
    if exist janaina-hero.jpg (
        echo [OK] janaina-hero.jpg
    ) else (
        echo [FALTANDO] janaina-hero.jpg
    )
    if exist janaina-sobre.jpg (
        echo [OK] janaina-sobre.jpg
    ) else (
        echo [FALTANDO] janaina-sobre.jpg
    )
    echo.
    pause
    goto menu
)

if "%choice%"=="4" (
    echo Abrindo pasta...
    start explorer.exe %CD%
    goto menu
)

if "%choice%"=="0" (
    echo Ate logo!
    exit /b
)

echo Opcao invalida!
pause
goto menu
