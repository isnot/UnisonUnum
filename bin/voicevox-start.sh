#!/usr/bin/env bash
PWD=`pwd`
REPOS_DIR="/home/naoto/repos"

# 製品版 VOICEVOX でサーバーを起動
VOICEVOX_DIR=$REPOS_DIR"/VOICEVOX-0.3.1" # 製品版 VOICEVOX ディレクトリのパス
CODE_DIRECTORY=$REPOS_DIR"/voicevox_engine" # コードがあるディレクトリのパス
cd $VOICEVOX_DIR
/usr/bin/bash -c "PYTHONPATH=$VOICEVOX_DIR python $CODE_DIRECTORY/run.py &"

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
jobs -l
