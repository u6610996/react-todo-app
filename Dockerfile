# syntax=docker/dockerfile:1
FROM node:18-alpine
WORKDIR /usr/src/app

RUN apk add --no-cache python3 make g++
COPY package*.json ./
RUN npm install --only=production

COPY . .

EXPOSE 3000
CMD [ "node", "app.js" ]