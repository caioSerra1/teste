# PASSO 1: Comece com a imagem oficial do n8n.
# Usar ":latest" pega a versão mais recente. É o mais simples para começar.
FROM n8nio/n8n:latest

# PASSO 2: Temporariamente, se torne o superusuário 'root' para poder instalar coisas.
USER root

# PASSO 3: Execute o comando de instalação do Node.js (npm).
# Ele vai baixar e instalar 'katex' e 'cheerio' de forma permanente na imagem.
# Se no futuro precisar de mais algo, é só adicionar o nome na lista (ex: npm install katex cheerio outra-lib).
RUN npm install katex cheerio

# PASSO 4: Volte a ser o usuário 'node', que é o usuário padrão e seguro para rodar o n8n.
USER node
