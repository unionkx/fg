FROM ghcr.io/linuxserver/baseimage-alpine-nginx:amd64-3.17
LABEL maintainer="unionkx"
RUN apk add --no-cache php81-ctype php81-curl php81-pdo_pgsql php81-pdo_sqlite php81-tokenizer php81-zip unzip curl && \
    curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
