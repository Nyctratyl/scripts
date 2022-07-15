#!/usr/bin/sh
playerctl --player=spotify metadata --format '{{playerName}};{{title}};{{artist}}'
