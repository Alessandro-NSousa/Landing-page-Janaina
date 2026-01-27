# 🆘 Imagens Não Aparecem - Guia Completo de Solução

## 📊 Status Atual

✅ **Arquivos verificados:**
- `assets/images/janaina-hero.png` ← Encontrado
- `assets/images/janaina-sobre.jpg` ← Encontrado

✅ **HTML configurado corretamente:**
- Seção Hero aponta para `janaina-hero.png`
- Seção Sobre aponta para `janaina-sobre.jpg`

❓ **Por que não aparecem?** → Provavelmente cache do navegador

---

## 🎯 Solução em 5 Minutos

### **1️⃣ Abra o Teste de Diagnóstico**

Abra este arquivo no navegador:
```
diagnostico-imagens.html
```

Ele testa se as imagens conseguem ser carregadas. Se funcionarem lá, o problema é cache.

### **2️⃣ Limpe o Cache** (Mais Importante!)

#### **Chrome/Edge/Opera:**
```
Ctrl + Shift + Delete
```

#### **Firefox:**
```
Ctrl + Shift + Delete
```

#### **Safari (Mac):**
```
Safari → Limpar Histórico → Todo o histórico
```

Na janela que abrir:
- ✅ Selecione "Tudo" ou "Todo o tempo"
- ✅ Marque "Cookies e dados de site"
- ✅ Marque "Cache em disco"
- ✅ Clique "Limpar dados" ou "Limpar"

### **3️⃣ Força Recarga da Página**

Depois de limpar cache, pressione:
```
Ctrl + F5
```

OU

```
Cmd + Shift + R (Mac)
```

Espere a página recarregar completamente.

### **4️⃣ Verifique as Imagens**

Agora abra:
```
index.html
```

As imagens **devem aparecer** na seção Hero e na seção Sobre.

---

## 🔍 Se Ainda Não Funcionar

### **Método 1: Verificar DevTools**

1. Abra `index.html`
2. Pressione **F12** no navegador
3. Vá para aba **"Network"**
4. Atualize (F5)
5. Procure por `janaina-hero` ou `janaina-sobre`

**Verifique o Status:**
- 🟢 **200** = OK (imagem foi carregada)
- 🔴 **404** = Não encontrado (arquivo em lugar errado)
- 🟡 **0** = Erro de conexão

**Se for 404:**
- Significa arquivo não está em `assets/images/`
- Veja "Método 2" abaixo

### **Método 2: Verificar Localização dos Arquivos**

1. Abra o gerenciador de arquivos
2. Navegue até: `landing-page`
3. Vá para pasta: `assets`
4. Abra pasta: `images`
5. Verifique se estão lá:
   - `janaina-hero.png`
   - `janaina-sobre.jpg`

**Se não estiverem:**
- Você precisa fazer upload novamente
- Use: `assets/images/upload-manager.html`

**Se estiverem:**
- Volte ao "Passo 3" (Força Recarga)

### **Método 3: Reconverter Imagens**

Se nada funcionou, pode ser problema de formato. Reconvirta as imagens:

**Online (mais fácil):**
1. Vá para [CloudConvert.com](https://cloudconvert.com/)
2. Faça upload da imagem
3. Escolha formato: **JPG**
4. Clique em **Convert**
5. Baixe
6. Salve em `assets/images/`

**Atualize os nomes:**
Se reconverteu ambas para JPG:
- `janaina-hero.jpg` (era .png)
- `janaina-sobre.jpg` (já era)

Atualize o HTML se necessário (normalmente não é).

---

## 📋 Checklist Completo

### Verificação Rápida:
- [ ] Abri `diagnostico-imagens.html` e funcionou?
  - SIM: Problema é cache. Vá para "Passo 2"
  - NÃO: Vá para "Método 2"

### Se Limpou Cache:
- [ ] Pressionei Ctrl+F5?
- [ ] Esperou a página recarregar completamente?
- [ ] As imagens aparecem agora?

### Se Verificou Arquivos:
- [ ] Arquivos estão em `assets/images/`?
- [ ] Nomes estão exatamente corretos?
  - `janaina-hero.png` (com ponto e extensão)
  - `janaina-sobre.jpg` (com ponto e extensão)
- [ ] Não tem espaços extras nos nomes?
- [ ] Não tem caracteres estranhos?

### Última Tentativa:
- [ ] Reconverti as imagens?
- [ ] Salvei em `assets/images/`?
- [ ] Limpei cache novamente?
- [ ] Fiz F5 novamente?

---

## 🚨 Problemas Específicos

### **Problema: "Vejo a página mas as imagens são cinzentas com placeholder"**

**Causa:** Imagens ainda estão carregando ou caminho está errado

**Solução:**
```
1. Abra DevTools (F12)
2. Vá para "Network"
3. Atualize (F5)
4. Procure por "janaina-hero" e "janaina-sobre"
5. Clique em cada uma e veja a aba "Headers"
6. Verifique se o Status é 200 ou 404
```

### **Problema: "Vejo erro 404 no DevTools"**

**Causa:** Arquivo não está no caminho esperado

**Solução:**
```
1. Verifique se o arquivo existe em:
   landing-page/assets/images/
2. Se não existir, faça upload novamente
3. Use: assets/images/upload-manager.html
```

### **Problema: "O arquivo aparece no gerenciador mas não na página"**

**Causa:** Cache persistente

**Solução:**
```
1. Limpe cookie/cache do site específico:
   F12 → Application → Cookies/Cache → Delete
2. Feche navegador completamente
3. Reabra navegador
4. Abra index.html novamente
```

### **Problema: "Funciona em um navegador mas não em outro"**

**Causa:** Cada navegador tem cache separado

**Solução:**
```
1. Limpe cache em TODOS os navegadores que usa
2. Ou use modo privado para testar:
   - Chrome: Ctrl+Shift+N
   - Firefox: Ctrl+Shift+P
   - Edge: Ctrl+Shift+P
```

---

## 📞 Informações para Suporte

Se o problema persiste, prepare estas informações:

1. **Screenshot do DevTools (F12 → Network):**
   - Mostra qual erro está acontecendo

2. **Lista de arquivos em `assets/images/`:**
   ```
   Dir C:\Usuarios\...\landing-page\assets\images
   ```

3. **URL onde está testando:**
   - localhost:xxxx
   - ou seu domínio

4. **Navegador e versão:**
   - Chrome 120.0
   - Firefox 121.0
   - etc

---

## ✅ Verification Rápida

Copie este HTML em um arquivo novo e abra:

```html
<!DOCTYPE html>
<html>
<body>
<img src="./assets/images/janaina-hero.png" alt="test1">
<img src="./assets/images/janaina-sobre.jpg" alt="test2">
</body>
</html>
```

Se as imagens aparecerem, o caminho está correto.

---

## 🎯 Próximas Ações

### Se resolveu:
✅ Parabéns! Suas imagens estão funcionando
✅ Volte à página principal (index.html)
✅ Veja os efeitos visuais integrados

### Se não resolveu:
1. Tente "Método 3" (reconverter imagens)
2. Teste em navegador privado/incógnito
3. Se persistir, entre em contato com suporte

---

## 💡 Dicas Profissionais

1. **Nunca confie em cache ao desenvolver**
   - Sempre use Ctrl+F5 para testar
   - Ou use modo privado do navegador

2. **Nomes de arquivo são case-sensitive no Linux**
   - ✅ `janaina-hero.png`
   - ❌ `Janaina-Hero.png` (diferente!)

3. **Evite espaços e caracteres especiais**
   - ✅ `janaina-hero-foto.png`
   - ❌ `janaina héro (1).png`

4. **Sempre use Ctrl+F5, não apenas F5**
   - F5 = Recarrega (pode usar cache)
   - Ctrl+F5 = Força reload sem cache (recomendado)

---

## 📚 Recursos Úteis

- `diagnostico-imagens.html` - Teste interativo
- `teste-imagens.html` - Teste simples
- `SOLUCAO-RAPIDA.md` - Resumo rápido
- `IMAGENS.md` - Guia completo original

---

**Se ainda tiver dúvidas, consulte `diagnostico-imagens.html` para teste interativo!** 🚀

