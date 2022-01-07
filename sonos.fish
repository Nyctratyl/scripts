#!/bin/sh
url=$(playerctl --player=spotify metadata --format "{{xesam:url}}")
curl $url -s | grep "(?<=title>).*(?=</title)" -oP | rev | cut -c -11 --complement | rev
