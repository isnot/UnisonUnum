#!/usr/bin/env bash
PWD=`pwd`
WORK_DIR="/home/naoto/repos"

# 製品版 VOICEVOX でサーバーを起動
VOICEVOX_DIR=$WORK_DIR"/VOICEVOX-0.4.1" # 製品版 VOICEVOX ディレクトリのパス
cd $WORK_DIR"/voicevox_engine" # コードがあるディレクトリのパス
python proxy_run.py --voicevox_dir=$VOICEVOX_DIR
