#!/usr/bin/env bash
LOGDIR=/var/log/api
cd /opt/voicevox/
wine64 ./run.exe --host 0.0.0.0 > $LOGDIR/access_log 2> $LOGDIR/error_log
