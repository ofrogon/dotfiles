#!/bin/bash

notify_user() {
  notify-send -e -h string:x-canonical-private-synchronous:osd -u low "The laptop screen is $1"
}

if [[ "$1" == "--open" ]]; then
  hyprctl keyword monitor "eDP-1, preferred, 3440x700, 1"
  notify_user "open"
  hyprctl reload
else
  hyprctl keyword monitor "eDP-1, disable"
  notify_user "close"
fi
