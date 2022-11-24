FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.16
LABEL maintainer="unionkx"
RUN apk add --no-cache php8-ctype php8-curl php8-pdo_pgsql php8-pdo_sqlite php8-tokenizer php8-zip unzip curl && \
    curl -o  filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
