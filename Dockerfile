FROM ubuntu:latest

RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get install -y wget
ARG VERSION=v4.9.6
ARG BINARY=yq_linux_386
RUN wget https://github.com/mikefarah/yq/releases/download/${VERSION}/${BINARY} -O /usr/bin/yq \ 
    && chmod +x /usr/bin/yq
