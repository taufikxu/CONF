#!/usr/bin/env bash

rcmd="$(which tmux) -2 -u"      # tmux path
cmd=$(which tmux)
if [ "$1" != "" ]; then
    session=$1
else
    session=$(basename "$PWD")
fi


FILE=/mfs/kunxu/ENV/TMUX.list
LOG $(hostname -s):$session >> $FILE
lines=$(wc -l < $FILE)
if [ "$lines" -gt 1000 ]; then
    sed -i "1d" $FILE;
fi

$cmd has -t $session 2> /dev/null

if [ $? -ne 0 ]; then
    $rcmd new -d -n nviw -s $session "watch nvidia-smi"
    $rcmd split-window -h -t $session:0 "watch nvidia-who"
    #$rcmd split-window -v -t $session:0.0 "watch nvidia-who"
    $rcmd resize-pane -t $session:0.0 -x 20
    $rcmd neww -n zsh -t $session "zsh"
fi

$rcmd att -t $session

exit 0
