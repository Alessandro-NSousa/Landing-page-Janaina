# Landing Page - Janaina Santana | Consultoria Fitness Online

Uma landing page moderna, responsiva e focada em conversão para divulgar os serviços da profissional de educação física Janaina Santana.

## 📋 Características

✅ **100% Responsiva** - Mobile, tablet e desktop  
✅ **SEO Otimizada** - Tags semânticas e meta tags  
✅ **Foco em Conversão** - CTAs estratégicas e formulário integrado  
✅ **Design Moderno** - Tailwind CSS com gradientes e animações  
✅ **Performance** - Carregamento rápido e otimizado  
✅ **Acessibilidade** - WCAG compliant  
✅ **Integração WhatsApp** - Automação de leads  

## 📂 Estrutura do Projeto

```
landing-page/
├── index.html                 # Página principal
├── package.json              # Dependências do projeto
├── tailwind.config.js        # Configuração do Tailwind CSS
├── css/
│   ├── input.css            # Estilos base (importa Tailwind)
│   └── output.css           # CSS compilado
├── assets/
│   ├── images/              # Imagens do projeto
│   └── icons/               # Ícones customizados
└── README.md                # Este arquivo
```

## 🚀 Como Começar

### 1. Clonar ou baixar o projeto
```bash
cd landing-page
```

### 2. Instalar dependências
```bash
npm install
```

### 3. Desenvolvimento com Tailwind CSS
Para compilar CSS com watch mode:
```bash
npm run dev
```

### 4. Build para produção
Para compilar e minificar:
```bash
npm run build
```

### 5. Abrir no navegador
Abra `index.html` em seu navegador (ou use um servidor local como Live Server)

## 🎨 Seções da Landing Page

### 1. **Header Fixo**
- Navegação com links internos
- Logo da marca
- Botão WhatsApp fixo

### 2. **Hero Section**
- Headline impactante
- Subheadline explicativo
- CTA principal e secundário
- Estatísticas de credibilidade

### 3. **Sobre a Profissional**
- Foto da Janaina
- Biografia profissional
- Formação e especializações
- Diferenciais

### 4. **Serviços Oferecidos**
- Consultoria Online
- Treinos Personalizados
- Turma de Pilates
- Acompanhamento para Musculação

### 5. **Benefícios**
- 6 benefícios principais com ícones
- Destaque visual

### 6. **Depoimentos**
- 3 depoimentos de alunos reais
- Avaliação por estrelas
- Nomes e tipos de serviço

### 7. **Planos de Atendimento**
- Plano Mensal
- Plano Trimestral (Popular)
- Plano Anual

### 8. **Formulário de Contato**
- Campo de nome
- Campo de email
- Campo de WhatsApp
- Seletor de objetivo
- Mensagem adicional
- Checkbox de privacidade (LGPD)

### 9. **FAQ**
- 6 perguntas frequentes expandíveis
- Respostas claras e objetivas

### 10. **CTA Final**
- Mensagem motivacional
- Dois botões de ação

### 11. **Footer**
- Links de navegação
- Contato e redes sociais
- Política de privacidade
- Copyright

## 🔧 Personalizações Necessárias

Antes de publicar, atualize os seguintes campos:

### No `index.html`:

1. **Número de WhatsApp** (linha ~50, 100, etc):
```html
href="https://wa.me/5511999999999?text=..."
```
Substitua `5511999999999` pelo número real da Janaina.

2. **Foto profissional** (linha ~250):
Adicione a imagem em `assets/images/` e atualize a referência.

3. **Meta description** (linha ~10):
```html
<meta name="description" content="Sua descrição aqui">
```

4. **Depoimentos** (linha ~700+):
Atualize com depoimentos reais de alunos.

5. **Valores dos planos** (linha ~850+):
Atualize os preços conforme sua tabela.

## 🎯 Estratégia de Conversão

### CTAs Estratégicos:
- ✅ Hero section (botão principal)
- ✅ Mobile (botão WhatsApp fixo)
- ✅ Seções intermediárias (botões secundários)
- ✅ Formulário completo (seção dedicada)
- ✅ CTA final (antes do footer)

### Integração WhatsApp:
O formulário captura dados e redireciona para WhatsApp com mensagem pré-preenchida, facilitando o contato automatizado.

## 📱 Responsividade

### Breakpoints:
- **Mobile**: < 640px (totalmente otimizado)
- **Tablet**: 640px - 1024px
- **Desktop**: > 1024px

### Features Mobile:
- Botão WhatsApp fixo na tela
- Menu responsivo
- Texto ajustável
- Imagens otimizadas

## ⚡ Performance

### Otimizações implementadas:
- ✅ CSS minificado
- ✅ Carregamento de fontes otimizado
- ✅ Imagens em alta resolução (substitua por WebP quando possível)
- ✅ Sem dependências externas desnecessárias

### Dicas para melhorar:
1. Comprima imagens com TinyPNG
2. Use formatos WebP para imagens
3. Implemente lazy loading
4. Use CDN para distribuição
5. Ative compressão GZIP no servidor

## 🔒 LGPD e Privacidade

A landing page inclui:
- ✅ Aviso de LGPD no formulário
- ✅ Checkbox de consentimento
- ✅ Link para política de privacidade
- ✅ Conformidade com legislação brasileira

## 📊 Analytics e Rastreamento

Para adicionar Google Analytics:

```html
<!-- Google Analytics -->
<script async src="https://www.googletagmanager.com/gtag/js?id=GA_ID"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  gtag('config', 'GA_ID');
</script>
```

## 🔗 Integrações Disponíveis

Você pode integrar:
- ✅ Google Analytics
- ✅ Meta Pixel (Facebook)
- ✅ Mailchimp (email marketing)
- ✅ RD Station (automação de marketing)
- ✅ Typeform (formulários avançados)

## 🐛 Suporte e Atualizações

Para qualquer dúvida ou necessidade de customização, consulte:
- Documentação do Tailwind: https://tailwindcss.com/docs
- HTML Semântico: https://www.w3schools.com/html/html5_semantic_elements.asp

## 📝 Checklist Pré-Publicação

- [ ] Inserir foto profissional da Janaina
- [ ] Atualizar número de WhatsApp
- [ ] Revisar todos os textos
- [ ] Testar links e botões
- [ ] Testar em dispositivos móveis reais
- [ ] Adicionar depoimentos reais
- [ ] Atualizar preços dos planos
- [ ] Configurar Google Analytics
- [ ] Criar política de privacidade
- [ ] Testar formulário e integração WhatsApp
- [ ] Verificar SEO (meta tags, H1, etc.)
- [ ] Publicar no domínio final

## 📜 Licença

Todos os direitos reservados © 2026 Janaina Santana

---

**Desenvolvido com ❤️ para sua transformação!**
