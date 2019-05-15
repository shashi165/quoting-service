FROM node:8.11.3-alpine

WORKDIR /src

CMD ["node", "/src/server.js"]

# COPY .npmrc .npmrc
COPY package.json ./src/package-lock.json /src/
RUN npm install --production

COPY ./src/ /src/
