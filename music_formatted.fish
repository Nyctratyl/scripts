#!/usr/bin/fish
playerctl --player=$player metadata --format '{{artist}} - {{title}} ({{playerName}})'
