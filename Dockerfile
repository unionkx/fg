FROM debian:testing-slim
LABEL maintainer="unionkx"
RUN apt-get update
RUN apt-get -y install git nano nginx openssl php8 unzip curl libzip-dev libldap2-dev
RUN curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
