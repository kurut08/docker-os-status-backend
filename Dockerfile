FROM node:23.9-alpine3.20

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

RUN npm install

COPY index.js ./

EXPOSE 3005

ENTRYPOINT ["node", "index.js"]