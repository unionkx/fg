FROM amd64/alpine:latest
LABEL maintainer="unionkx"
RUN \
  apk add --no-cache \
    git \
    nano \
    nginx \
    openssl \
    php8 \
    php8-fileinfo \
    php8-fpm \
    php8-json \
    php8-mbstring \
    php8-openssl \
    php8-session \
    php8-simplexml \
    php8-xml \
    php8-xmlwriter \
    php8-zlib \
    php8-ctype \
    php8-curl \
    php8-pdo_pgsql \
    php8-pdo_sqlite \
    php8-tokenizer \
    php8-zip \
    unzip \
    curl && \
 curl -o  filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
 rm -rf \
	/tmp/*

# add local files
COPY root/ /
