# 🔧 Solução Rápida - Imagens Não Aparecem

## ✅ Status Verificado

As imagens **foram encontradas** no diretório:
```
✓ assets/images/janaina-hero.png
✓ assets/images/janaina-sobre.jpg
```

O HTML está configurado para encontrá-las. Então o problema é provavelmente **cache do navegador**.

---

## 🚀 Solução em 3 Passos

### Passo 1: Limpar Cache (Mais Importante!)

#### Windows/Linux/Mac:
```
Pressione: Ctrl + Shift + Delete
OU
Cmd + Shift + Delete (Mac)
```

Isso abre o menu de limpar histórico. Selecione:
- ✅ Cookies e dados do site em cache
- ✅ Período: **Tudo**

Clique em **Limpar dados**

### Passo 2: Recarregar Página com Force Refresh

```
Pressione: Ctrl + F5
OU
Cmd + Shift + R (Mac)
```

Isso força o navegador a **baixar tudo novamente** (sem usar cache)

### Passo 3: Verificar no Navegador

Abra a página novamente:
```
http://localhost (ou seu domínio)
```

As imagens devem aparecer agora!

---

## 🔍 Se Ainda Não Funcionar

### Abra o DevTools (Ferramenta de Desenvolvedor)

```
1. Pressione F12 no navegador
2. Vá para a aba "Network"
3. Atualize a página (F5)
4. Procure por "janaina-hero" e "janaina-sobre"
```

### Verifique o Status

Se a coluna "Status" mostrar:
- ✅ **200** = Imagem carregada com sucesso
- ❌ **404** = Imagem não encontrada
- ⚠️ **0** = Erro de conexão

### Se for 404 (Not Found)

Significa que a imagem **não está no caminho correto**. Solução:

```
Certifique-se de que os arquivos estão exatamente em:

landing-page/
└── assets/
    └── images/
        ├── janaina-hero.png      ← Aqui!
        └── janaina-sobre.jpg     ← Aqui!
```

---

## 🎯 Teste Rápido de Imagens

Abra este arquivo no navegador:
```
teste-imagens.html
```

Este arquivo testa se as imagens são carregáveis. Se funcionarem lá, significa que o caminho está correto.

---

## 📋 Checklist de Verificação

- [ ] Arquivos estão em `assets/images/`?
- [ ] Nomes estão exatamente corretos?
  - [ ] `janaina-hero.png` (com PNG)
  - [ ] `janaina-sobre.jpg` (com JPG)
- [ ] Limpou o cache do navegador?
- [ ] Fez F5 para recarregar?
- [ ] Abriu o DevTools para ver erros?
- [ ] Testou em outro navegador?

---

## 🆘 Último Recurso: Reconverter Imagens

Se nada funcionar, reconvirta as imagens:

### Converter PNG para JPG (ou vice-versa)

**Online:** [CloudConvert.com](https://cloudconvert.com/)

1. Faça upload da imagem
2. Escolha formato: **JPG** ou **PNG**
3. Clique em Converter
4. Baixe a imagem
5. Salve em `assets/images/`

Exemplo:
- Salve ambas como `.jpg` e atualize os nomes no HTML

---

## 🔗 Documentação de Referência

Para mais detalhes, consulte:
- `IMAGENS.md` - Guia completo
- `teste-imagens.html` - Teste interativo
- `diagnosticar-imagens.sh` - Script de diagnóstico

---

## ✨ Resultado Esperado

Após limpar cache e recarregar:

```
┌─────────────────────────────────────┐
│  HERO SECTION                       │
├──────────────────┬──────────────────┤
│ Conteúdo Texto   │  [Foto Janaina]  │
│                  │  com efeitos      │
│ • Headline       │  visuais          │
│ • Botões CTA     │                   │
└──────────────────┴──────────────────┘

As imagens devem aparecer aqui! 👆
```

---

## 💡 Dicas Finais

1. **Nunca use cache ao testar** - Sempre F5 ou Ctrl+F5
2. **Verifique console (F12)** - Lá aparecem erros
3. **Teste em navegador diferente** - Chrome, Firefox, Edge, Safari
4. **Nomes de arquivo são case-sensitive** no Linux
   - ✅ `janaina-hero.png` é diferente de `Janaina-Hero.png`

---

**Se o problema persistir, envie uma mensagem com:**
1. Screenshot da aba Network (F12)
2. Lista de arquivos em `assets/images/`
3. Mensagem de erro exata (se houver)

Estarei aqui para ajudar! 🚀
