#!/usr/bin/sh
playerctl --player=$player metadata --format '{{playerName}};{{title}};{{artist}}'
