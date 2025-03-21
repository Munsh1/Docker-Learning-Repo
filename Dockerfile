FROM node:alpine

WORKDIR /app

COPY package*.json /app/

RUN npm install

COPY src /app/

RUN npm install

CMD ["node", "server.js"]