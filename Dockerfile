FROM node:14.5.0-alpine

# USER node

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

# RUN npm install -g npm@8.1.0
RUN apk add --update python3 make g++ && rm -rf /var/cache/apk/*
RUN apk add --upgrade xset

# ENTRYPOINT /bin/bash