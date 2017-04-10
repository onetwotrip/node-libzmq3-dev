FROM node:5.5.0
MAINTAINER avikez@gmail.com (Dmitry Shmelev)

RUN apt-get update && apt-get install -y
RUN npm install -g npm-cache
RUN npm cache clean

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
