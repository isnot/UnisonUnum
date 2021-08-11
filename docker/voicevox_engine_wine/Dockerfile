# syntax=docker/dockerfile:1.3-labs
FROM aoirint/wine:ubuntu-devel-v20210802a AS runtime-env

# ENV DIST VOICEVOX-0.2.0
EXPOSE 50021

# COPY $DIST /opt/voicevox
WORKDIR /opt/voicevox
# RUN groupadd -r naoto && useradd -r -g naoto naoto
RUN mkdir -p /var/log/api
RUN chown -R user:user /var/log/api
ADD ./cmd.sh /
USER user 
ENTRYPOINT []
CMD [ "/cmd.sh" ]
