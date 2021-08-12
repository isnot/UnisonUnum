#!/usr/bin/env bash
source .env
cd voicevox_engine_wine
docker run -d \
  -e VIRTUAL_PORT=50021 \
  -p 127.0.0.1:50021:50021 \
  -v $DIST_DIR:/opt/voicevox \
  voicevox_engine_wine

# 実行中のコンテナでコマンドを実行
# $ docker exec -it voicevox_engine_wine /bin/bash

# stop run.exe
# $ docker exec -d voicevox_engine_wine pkill run.exe

# exec
#   -d, --detach=false         デタッチド・モード: コマンドをバックグラウンドで実行
#   -i, --interactive=false    アタッチしていなくても STDIN をオープンにし続ける
#   -t, --tty=false            疑似ターミナル (pseudo-TTY) の割り当て
# inspect
#   https://docs.docker.jp/engine/reference/commandline/inspect.html
# logs
#   https://docs.docker.jp/engine/reference/commandline/logs.html
# ps
#   https://docs.docker.jp/engine/reference/commandline/ps.html
