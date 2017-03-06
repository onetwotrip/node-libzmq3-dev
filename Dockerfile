FROM node:0.10.47
MAINTAINER avikez@gmail.com (Dmitry Shmelev)

RUN apt-get update && apt-get install -y \
  git \
  libzmq3-dev \
  python-minimal
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV HOME=/tmp
ADD .npmrc $HOME/.npmrc
