#!/bin/bash
if [[ $1 -eq 8 ]]
then
    target_n=-1
else
    target_n=$1
fi
target_id=`i3-msg -t get_tree | jq " .. | objects | select(.nodes? | .[]? | .focused==true) | .nodes | .[$target_n] | .id"`
i3-msg "[con_id="$target_id"] focus"
