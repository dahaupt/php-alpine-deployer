FROM php:8.2-alpine

RUN apk update && apk add --no-cache rsync git openssh bash sshpass

RUN wget https://github.com/deployphp/deployer/releases/download/v7.3.0/deployer.phar && \
    mv deployer.phar /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep

COPY bin /deploy/bin
ENV PATH="/deploy/bin:$PATH"