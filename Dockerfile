FROM php:7.4-alpine

RUN apk update && apk add --no-cache rsync git openssh bash

RUN wget https://deployer.org/releases/v7.0.0-beta.20/deployer.phar && \
    mv deployer.phar /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep
