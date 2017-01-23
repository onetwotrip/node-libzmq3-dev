FROM node:0.10.47
MAINTAINER avikez@gmail.com (Dmitry Shmelev)

RUN apt-get update && apt-get install -y \
  git \
  libzmq3-dev \
  python-minimal
RUN apt-get remove --purge -y $BUILD_PACKAGES $(apt-mark showauto) && rm -rf /var/lib/apt/lists/*
