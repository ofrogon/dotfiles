#!/usr/bin/env bash

if [[ "$1" == "open" ]]; then
  hyprctl keyword monitor "eDP-1, preferred, 3440x700, 1"
  notify-send "Écran du laptop ouverte"
  hyprctl reload
else
  hyprctl keyword monitor "eDP-1, disable"
  notify-send "Écran du laptop fermée"
fi
