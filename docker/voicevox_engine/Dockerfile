# syntax=docker/dockerfile:1.3-labs
# FROM debian:buster AS runtime-env
FROM ubuntu:21.04 AS runtime-env

ARG VIRTUAL_PORT
ENV VIRTUAL_PORT ${VIRTUAL_PORT}

ARG USERNAME=user
ARG GROUPNAME=user
ARG UID=1000
ARG GID=1000

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y libsndfile1 python3 python3-pip
RUN groupadd -g $GID $GROUPNAME && useradd -m -s /bin/bash -u $UID -g $GID $USERNAME

COPY ./start.sh /opt/voicevox/
COPY /home/naoto/repos/voicevox_engine /opt/voicevox_engine

USER $USERNAME
WORKDIR /opt/voicevox_engine
RUN pip3 install -r requirements.txt -r requirements-dev.txt

WORKDIR /opt/voicevox
ENTRYPOINT []
CMD ./start.sh
