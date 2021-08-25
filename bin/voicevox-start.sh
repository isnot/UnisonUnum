#!/usr/bin/env bash
PWD=`pwd`
WORK_DIR="/home/naoto/repos"

# 製品版 VOICEVOX でサーバーを起動
VOICEVOX_DIR=$WORK_DIR"/VOICEVOX-0.4.1" # 製品版 VOICEVOX ディレクトリのパス
cd $WORK_DIR"/voicevox_engine" # コードがあるディレクトリのパス
/usr/bin/bash -c "python run.py --voicevox_dir=$VOICEVOX_DIR &"

#echo 'voicevox_engine v.'$(cat VERSION.txt)
#echo 'launch voicevox_engine server. wait for a while...'
PID1=$!
echo $PID1
sleep 20s
cd $REPOS_DIR/voicevox
/usr/bin/bash -c "npm run electron:serve &"
PID2=$!
wait $PID2
cd $PWD
