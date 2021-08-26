# syntax=docker/dockerfile:1.3-labs
FROM aoirint/wine:ubuntu-devel-v20210802a AS runtime-env

ARG VIRTUAL_PORT
ENV VIRTUAL_PORT ${VIRTUAL_PORT}
ARG VOICEVOX_DIR
ENV VOICEVOX_DIR ${VOICEVOX_DIR}

WORKDIR /opt/voicevox
USER user 
ENTRYPOINT []
CMD wine64 ./run.exe --host 0.0.0.0 --port $VIRTUAL_PORT # --voicevox_dir=$VOICEVOX_DIR
