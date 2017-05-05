FROM node:7.3.0
MAINTAINER avikez@gmail.com (Dmitry Shmelev)

RUN apt-get update && apt-get install -y \
  python-minimal \
  git
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN useradd jenkins -u 1007 --shell /bin/bash --create-home
USER jenkins
