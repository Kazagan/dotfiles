#!/usr/bin/env bash

# make sure it's executable with:
# chmod +x ~/.config/sketchybar/plugins/aerospace.sh
#

source "$CONFIG_DIR/colors.sh"
FOCUSED_WORKSPACE=$(aerospace list-workspaces --focused)
# -- DEBUG --
# IS_FOCUSED=0
# if [ "$1" = "$FOCUSED_WORKSPACE" ]; then 
#     IS_FOCUSED=1 
# fi
# echo -e "input: $1\tFocused: $FOCUSED_WORKSPACE\tMonitor Changed: $MONITOR_CHANGE\tIs Focused: $IS_FOCUSED"

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set space.$1 label.color=$RED icon.color=$RED

# background.color=0x88FF00FF
else
  sketchybar --set space.$1 label.color=$WHITE icon.color=$WHITE
fi
  
display=$($CONFIG_DIR/plugins/get_display_by_workspace.sh $1)
sketchybar --set $NAME display="$display"


