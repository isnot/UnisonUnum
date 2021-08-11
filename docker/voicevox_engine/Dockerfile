# syntax=docker/dockerfile:1.3-labs
FROM python:3.9-buster AS build-env

RUN <<EOF
    echo "deb http://deb.debian.org/debian buster contrib" >> /etc/apt/sources.list
    apt-get update
    apt-get install -y \
        cmake \
        libsndfile1 \
        chrpath
EOF

ADD ./requirements.txt ./requirements-dev.txt /tmp/
RUN pip3 install -r /tmp/requirements.txt -r /tmp/requirements-dev.txt

WORKDIR /work
ADD ./voicelib/ /work/voicelib
ADD ./voicevox_engine/ /work/voicevox_engine
ADD ./run.py ./check_tts.py ./VERSION.txt ./LICENSE ./LGPL_LICENSE /work/

RUN python3 -m nuitka \
    --standalone \
    --plugin-enable=numpy \
    --follow-import-to=numpy \
    --follow-import-to=aiofiles \
    --include-package=uvicorn \
    --include-package-data=pyopenjtalk \
    --include-data-file=VERSION.txt=./ \
    --include-data-file=./voicelib/lib/*=./ \
    --include-data-file=./voicelib/bin/*=./ \
    --follow-imports \
    --no-prefer-source-code \
    run.py


FROM debian:buster AS runtime-env

WORKDIR /work
COPY --from=build-env /work/run.dist /work

RUN <<EOF
    apt-get update
    apt-get install -y \
        libsndfile1
EOF

CMD [ "./run", "--host", "0.0.0.0" ]

