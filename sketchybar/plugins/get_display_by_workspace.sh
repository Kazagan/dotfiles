#/bin/bash

display=-1
for monitor in $(aerospace list-monitors --format %{monitor-id}); do 
    for place in $(aerospace list-workspaces --monitor $monitor); do
	if [ "$1" = "$place" ]; then
	    display=$($CONFIG_DIR/plugins/get_monitor.sh $monitor)
	fi
    done
done

echo "$display"
