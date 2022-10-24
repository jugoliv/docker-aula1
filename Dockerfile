FROM node:14
WORKDIR /app-node
# Só é executado em tempo de build
ARG PORT_BUILD=6000
#
ENV PORT=$PORT_BUILD
# Indica que a aplicação está sendo executada na porta 3000 (não é obrigatório)
#EXPOSE 3000
EXPOSE $PORT_BUILD
COPY . .
RUN npm install
ENTRYPOINT npm start