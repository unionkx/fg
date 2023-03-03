FROM debian:testing-slim
LABEL maintainer="unionkx"
RUN apt-get update
RUN apt-get -y install apache2-utils git logrotate nano nginx openssl php8 unzip curl
RUN apt-get -y autoremove
RUN apt-get autoclean
RUN curl -o filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
    rm -rf /tmp/*
COPY root/ /
