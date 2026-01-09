#!/usr/bin/env bash


echo 'grip.sh'
echo "$TIMER $REP"

if [[ "$TIMER" != "" ]]; then
    sketchybar --set $NAME icon="$REP | $TIMER"
else
    sketchybar --set $NAME icon=""
fi


