#! /usr/bin/env bash

MPATH="/home/Data"

rsync -azv --delete jungpu$1:$MPATH/ $MPATH/
