#! /usr/bin/env bash

LOCAL='/home/kunxu/ENV/'
REMOT='/home/kunxu/ENV/'

rsync -azv --delete jungpu$1:$REMOT $LOCAL
