FROM r4digital/ubuntu:latest

LABEL maintainer="henrique.schmidt@somosphi.com"

ENV NODE_VERSION=14

# Install NodeJS and Typescript
RUN curl -sL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g typescript ts-node @apidevtools/swagger-cli
