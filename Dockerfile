FROM node:23.9-alpine3.20

WORKDIR /app

COPY package.json ./
COPY package-lock.json ./

#Add python, make and g++ to install diskusage
RUN apk add python3
RUN apk add make
RUN apk add g++
RUN npm install

COPY index.js ./

EXPOSE 3005

ENTRYPOINT ["node", "index.js"]