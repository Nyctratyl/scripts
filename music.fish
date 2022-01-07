#!/usr/bin/fish
playerctl --player=$player metadata --format '{{playerName}};{{title}};{{artist}}'
