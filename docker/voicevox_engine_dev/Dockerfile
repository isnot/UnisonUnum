# syntax=docker/dockerfile:1.3-labs
# FROM debian:buster AS runtime-env
FROM ubuntu:21.04 AS runtime-env

ARG VIRTUAL_PORT
ENV VIRTUAL_PORT ${VIRTUAL_PORT}

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000

ENV TZ Asia/Tokyo
ENV DEBIAN_FRONTEND=noninteractive
ENV GIT_SSL_NO_VERIFY=1

RUN apt update
RUN apt install -qq -y --no-install-recommends \
    python3 python3-dev python3-wheel python3-pip \
    cmake chrpath build-essential ca-certificates clang \
    g++-multilib gcc-multilib libasound2-dev libsndfile1 \
    libcap-dev libcups2-dev libnss3-dev libxss1 libxtst-dev \
    tzdata curl git

RUN groupadd -g $GID $GROUPNAME && useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

COPY ./start.sh /tmp/
COPY ./requirements-docker.txt /tmp/
RUN chmod a+x /tmp/start.sh

USER $USERNAME
WORKDIR /tmp
RUN pip3 install -r /tmp/requirements-docker.txt
ENTRYPOINT []
CMD sh -c ./start.sh
