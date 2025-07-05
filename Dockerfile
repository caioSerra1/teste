# Versão 2 - Mais explícita e robusta

# PASSO 1: Comece com a imagem oficial do n8n.
FROM n8nio/n8n:latest

# PASSO 2: Mude para o usuário 'root' para ter permissões.
USER root

# PASSO 3 (O MAIS IMPORTANTE): Mude o diretório de trabalho para a pasta exata onde o n8n está instalado.
# É como dizer: "Entre na 'casa' do n8n antes de fazer qualquer coisa".
WORKDIR /usr/local/lib/node_modules/n8n

# PASSO 4: Agora sim, execute a instalação.
# Como já estamos na pasta correta, os pacotes serão instalados como "vizinhos" do n8n.
RUN npm install katex cheerio

# PASSO 5: Por segurança, retorne o diretório de trabalho para o padrão.
WORKDIR /data

# PASSO 6: Retorne para o usuário padrão e seguro.
USER node
