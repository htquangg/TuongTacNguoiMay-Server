FROM node:alpine

RUN mkdir -p /usr/src/server-gittrending && chown -R node:node /usr/src/server-gittrending

WORKDIR /usr/src/server-gittrending

COPY package.json yarn.lock ./

USER node

RUN yarn install --pure-lockfile

COPY --chown=node:node . .

EXPOSE 3000
