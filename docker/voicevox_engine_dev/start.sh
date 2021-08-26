#!/usr/bin/env bash

OPT_DIR=/opt

# 製品版 VOICEVOX でサーバーを起動
VOICEVOX_DIR=$OPT_DIR"/voicevox" # 製品版 VOICEVOX ディレクトリのパス
cd $OPT_DIR"/voicevox_engine" # コードがあるディレクトリのパス
/usr/bin/bash -c "/usr/bin/python3 proxy_run.py --voicevox_dir=${VOICEVOX_DIR} --host 0.0.0.0 --port ${VIRTUAL_PORT}"
