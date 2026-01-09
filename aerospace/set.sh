#!/bin/bash

index=0
# 10 sets
while [ $index -lt 10 ]; do
    sleep 2 # Time to pick up grip, and rest between reps
    afplay -v 5 /System/Library/Sounds/Submarine.aiff &
    sketchybar --trigger grip_workout TIMER="0" REP="$index" &
    rep_timer=0
    
    # 10 Second hold is a rep
    while [ $rep_timer -lt 10 ]; do
        sketchybar --trigger grip_workout TIMER="$rep_timer" REP="$index" &
        sleep 1
        ((rep_timer++))
    done
    afplay -v 5 /System/Library/Sounds/Ping.aiff &

    ((index++))
done

sketchybar --trigger grip_workout TIMER="" REP="" &
afplay -v 5 /System/Library/Sounds/Glass.aiff &
