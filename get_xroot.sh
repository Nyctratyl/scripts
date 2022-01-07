#!/bin/sh
while true
do
    xprop -root WM_NAME | cut -c -20 --complement | head -c-2
    sleep 0.1
done
