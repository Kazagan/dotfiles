#/bin/bash


aerospace list-monitors --format "AeroSpaceId: %{monitor-id} nsScreenid: %{monitor-appkit-nsscreen-screens-id} Name: %{monitor-name}" | grep -E "AeroSpaceId: $1 nsScreenid: (\d+)" | awk '{for(i=1;i<=NF;i++) if($i=="nsScreenid:"){print $(i+1)}}'

