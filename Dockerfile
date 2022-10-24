FROM node:14
WORKDIR /app-node
# Carrega variáveis apenas no momento de build da imagem
ARG PORT_BUILD=6000
# Carrega variáveis que serão utilizadas no container
ENV PORT=$PORT_BUILD
# Indica que a aplicação está sendo executada na porta 3000 (não é obrigatório)
#EXPOSE 3000
EXPOSE $PORT_BUILD
COPY . .
RUN npm install
ENTRYPOINT npm start