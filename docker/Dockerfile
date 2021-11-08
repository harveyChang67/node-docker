FROM node:14.15-alpine

RUN mkdir -p /home/node/app
WORKDIR /home/node/app

# # # RUN npm install -g npm@8.1.0
# RUN apk add --update python3 make g++ && rm -rf /var/cache/apk/*
# RUN apk add --upgrade xset

RUN apk --no-cache update \ 
    && apk --no-cache add \
    --virtual build-dependencies\
    build-base \
    cmake \ 
    make \
    g++ \
    python \
    python3-dev \
    xvfb \
    xset \
    && pip3 install --no-cache-dir --upgrade pip==18 setuptools \
    && rm -fr /var/cache/apk/*     

RUN apk update \
    && apk --no-cache --update add build-base 

RUN npm install node-gyp -g
RUN npm install -g pkg
# USER node    

ENTRYPOINT /bin/bash