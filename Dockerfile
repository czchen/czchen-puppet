FROM debian:unstable

ENV DEBIAN_FRONTEND noninteractive

ADD . /tmp/czchen_environment

RUN apt-get update && \
    apt-get install -y puppet puppet-module-puppetlabs-apt && \
    apt-get clean

RUN cd /tmp/czchen_environment && \
    ./deploy
