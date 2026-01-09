#!/bin/sh

# The $NAME variable is passed from sketchybar and holds the name of
# the item invoking this script:
# https://felixkratz.github.io/SketchyBar/config/events#events-and-scripting
source "$CONFIG_DIR/colors.sh"

NOW=$((10#$(date +%H%M)))

case 1 in
    $(($NOW < 800)))
        sketchybar --set $NAME label.color=$BLUE icon.color=$BLUE
        ;;
    $(($NOW >= 1600)))
        sketchybar --set $NAME label.color=$RED icon.color=$RED
        ;;
    *)
        sketchybar --set $NAME label.color=$WHITE icon.color=$WHITE 
        ;;
esac

sketchybar --set "$NAME" label="$(date '+%m/%d %H:%M')"

