#!/bin/bash

notify_user() {
  current=$(get_current_brightness)
  notify-send -e -h string:x-canonical-private-synchronous:osd -u low "Écran du laptop $1"
}

if [[ "$1" == "--open" ]]; then
  hyprctl keyword monitor "eDP-1, preferred, 3440x700, 1"
  notify_user "ouverte"
  hyprctl reload
else
  hyprctl keyword monitor "eDP-1, disable"
  notify_user "fermée"
fi
