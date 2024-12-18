FROM ghcr.io/linuxserver/baseimage-alpine-nginx:amd64-3.18
LABEL maintainer="unionkx"
RUN apk add --no-cache php83-pdo_pgsql php83-pdo_sqlite php83-tokenizer unzip curl && \
    curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.12.0/filegator_v7.12.0.zip" && \
    rm -rf /tmp/*
COPY root/ /
