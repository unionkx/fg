FROM ghcr.io/linuxserver/baseimage-alpine-nginx:3.15-php8

# set version label
ARG DOCKER_HUB_USER
ARG IMAGE_BUILD_DATE
ARG IMAGE_VERSION
ARG FILEGATOR_RELEASE
LABEL build_version="${DOCKER_HUB_USER} version:- ${IMAGE_VERSION} Build-date:- ${IMAGE_BUILD_DATE}"
LABEL maintainer="${DOCKER_HUB_USER}"

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
