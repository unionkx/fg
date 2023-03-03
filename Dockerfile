FROM debian:latest
LABEL maintainer="unionkx"
RUN \
    sudo -E apt-get update
    sudo -E apt-get -y install apache2-utils git logrotate nano nginx openssl php81 php81-fileinfo php81-fpm php81-json php81-mbstring php81-ctype php81-curl php81-pdo_pgsql php81-pdo_sqlite php81-tokenizer php81-zip unzip curl
    sudo -E apt-get -y autoremove
    sudo -E apt-get autoclean
    curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
