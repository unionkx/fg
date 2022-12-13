FROM ghcr.io/linuxserver/baseimage-alpine-nginx:amd64-3.17
LABEL maintainer="unionkx"
RUN apk add --no-cache \
      php82 php82-fileinfo php82-fpm php82-json php82-mbstring php82-openssl php82-session php82-simplexml php82-xml php82-xmlwriter php82-zlib \
      unzip curl php81-ctype php82-curl php82-pdo_pgsql php82-pdo_sqlite php82-tokenizer php82-zip && \
    curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
