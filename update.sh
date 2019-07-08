#! /usr/bin/env bash

MPATH="/home/kunxu/"

# rsync -azv --delete jungpu$1:$MPATH/ENV/ $MPATH/ENV/
rsync -azv --delete jungpu$1:$MPATH/CONF/ $MPATH/CONF/
# rsync -azv --delete jungpu$1:$MPATH/workspace/ $MPATH/workspace/
