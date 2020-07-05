FROM alpine

WORKDIR /app/project

RUN apk update && \
    apk add git && \
    apk add --update nodejs npm && \
    apk add -f nodejs - && \
    npm install -g npm && \
    npm install -g vue-cli \
    npm install -g create-nuxt-app

ENV HOST 0.0.0.0
EXPOSE 8080
