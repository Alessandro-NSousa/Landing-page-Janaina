# Instruções de Instalação e Deploy

## 🖥️ Instalação Local

### Requisitos:
- Node.js (v14 ou superior)
- NPM ou Yarn

### Passos:

1. **Abrir terminal na pasta do projeto:**
```bash
cd d:\Projetos\Agentes\landing-page
```

2. **Instalar dependências:**
```bash
npm install
```

3. **Iniciar desenvolvimento (gera CSS compilado):**
```bash
npm run dev
```

Isso executará o Tailwind em modo watch e gerará o arquivo `output.css`.

4. **Abrir no navegador:**
   - Opção A: Abra `index.html` diretamente
   - Opção B: Use Live Server (extensão do VS Code)
   - Opção C: Use um servidor local (Python, Node, etc)

## 🏗️ Build para Produção

```bash
npm run build
```

Isso minificará o CSS para otimizar a performance.

## 📤 Deploy

### Opção 1: Vercel (Recomendado)
```bash
npm install -g vercel
vercel
```

### Opção 2: Netlify
1. Faça login em netlify.com
2. Arraste a pasta para o navegador
3. Pronto! Seu site estará online

### Opção 3: GitHub Pages
```bash
git init
git add .
git commit -m "Initial commit"
git branch -M main
git remote add origin https://github.com/seu-usuario/landing-page.git
git push -u origin main
```

### Opção 4: Hospedagem Tradicional
1. Compile o projeto (`npm run build`)
2. Faça upload via FTP/SFTP
3. Configure o servidor (Nginx/Apache)

## 🔐 Variáveis de Ambiente

Crie um arquivo `.env.local` para armazenar dados sensíveis:

```env
VITE_WHATSAPP_NUMBER=5511999999999
VITE_ANALYTICS_ID=UA-XXXXXXXXX-X
```

## 🔄 CI/CD com GitHub Actions

Crie `.github/workflows/deploy.yml`:

```yaml
name: Deploy

on:
  push:
    branches: [main]

jobs:
  build-and-deploy:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - uses: actions/setup-node@v2
        with:
          node-version: '16'
      - run: npm install
      - run: npm run build
      - uses: JamesIves/github-pages-deploy-action@v4
        with:
          branch: gh-pages
          folder: dist
```

## 📊 Monitoramento

### Google Analytics
1. Crie uma conta em google.com/analytics
2. Adicione o ID ao HTML
3. Aguarde 24h para dados aparecerem

### Ferramentas recomendadas:
- Google Search Console
- Bing Webmaster Tools
- Hotjar (análise de comportamento)
- Convertkit (email marketing)

## 🚀 Otimizações Finais

### Antes de publicar:

1. **Teste de Performance:**
   - Google PageSpeed: https://pagespeed.web.dev/
   - GTmetrix: https://gtmetrix.com/

2. **Teste de SEO:**
   - SEO Audit: https://www.seobility.net/

3. **Teste de Acessibilidade:**
   - WAVE: https://wave.webaim.org/

4. **Teste em Navegadores:**
   - Chrome, Firefox, Safari, Edge

5. **Teste em Dispositivos:**
   - iPhone, Android, Tablet

## 📞 Suporte

Para dúvidas sobre deploy ou problemas técnicos, consulte:
- Documentação Node.js: https://nodejs.org/docs/
- Documentação Tailwind: https://tailwindcss.com/docs
- Stack Overflow: https://stackoverflow.com/

---

**Sucesso no seu deploy! 🎉**
