# syntax=docker/dockerfile:1.3-labs
FROM aoirint/wine:ubuntu-devel-v20210802a AS runtime-env

ARG DIST_PORT
ENV DIST_PORT ${DIST_PORT}
ARG DIST_DIR
ENV DIST_DIR ${DIST_DIR}

WORKDIR /opt/voicevox
USER user 
ENTRYPOINT []
CMD wine64 ./run.exe --host 0.0.0.0 --port $DIST_PORT # --voicevox_dir=$DIST_DIR
