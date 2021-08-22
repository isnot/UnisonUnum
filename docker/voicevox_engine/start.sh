#!/usr/bin/env bash

REPOS_DIR=/opt

# 製品版 VOICEVOX でサーバーを起動
VOICEVOX_DIR=$REPOS_DIR"/voicevox" # 製品版 VOICEVOX ディレクトリのパス
CODE_DIRECTORY=$REPOS_DIR"/voicevox_engine" # コードがあるディレクトリのパス
cd $VOICEVOX_DIR
/usr/bin/bash -c "PYTHONPATH=$VOICEVOX_DIR /usr/bin/python3 $CODE_DIRECTORY/run.py --host 0.0.0.0 --port ${VIRTUAL_PORT}"
