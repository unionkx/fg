FROM ghcr.io/linuxserver/baseimage-alpine-nginx:amd64-3.21
LABEL maintainer="unionkx"
RUN apk add --no-cache php84-pdo_pgsql php84-pdo_sqlite php84-tokenizer unzip curl && \
    curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
