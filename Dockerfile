FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.16

# set version label
LABEL maintainer="unionkx"

# install filegator
RUN \
 echo "**** install runtime packages ****" && \
 apk add --no-cache --upgrade \
	php8-ctype \
	php8-curl \
	php8-pdo_pgsql \
	php8-pdo_sqlite \
	php8-tokenizer \
	php8-zip \
	unzip \
        curl && \
 echo "**** install filegator ****" && \
 curl -o  filegator.zip -L "https://github.com/filegator/filegator/releases/download/v7.8.3/filegator_v7.8.3.zip" && \
 echo "**** cleanup ****" && \
 rm -rf \
	/tmp/*

# add local files
COPY root/ /
