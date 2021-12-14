FROM php:7.4-alpine

RUN apk update && apk add --no-cache rsync git openssh bash sshpass

RUN wget https://github.com/deployphp/deployer/releases/download/v7.0.0-rc.3/deployer.phar && \
    mv deployer.phar /usr/local/bin/dep && \
    chmod +x /usr/local/bin/dep

COPY bin /deploy/bin
ENV PATH="/deploy/bin:$PATH"