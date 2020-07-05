FROM node:10.19-alpine

WORKDIR /app

RUN apk update && \
    apk add git && \
    apk add --update nodejs npm && \
    apk add -f nodejs - && \
    npm install -g npm && \
    npm install -g vue-cli

COPY . /app

ENV HOST 0.0.0.0
EXPOSE 3000
