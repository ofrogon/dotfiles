#!/bin/bash

notify_user() {
  current=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print int($2 * 100) "%"}')
  notify-send -e -h string:x-canonical-private-synchronous:osd -u low "$1 $current"
}

if [[ "$1" == "--increase" ]]; then
  wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
  notify_user "Increased sound to "
elif [[ "$1" == "--decrease" ]]; then
  wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
  notify_user "Decreased sound to "
elif [[ "$1" == "--toggle-mute" ]]; then
  wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
else
  notify-send "Unknown parameter"
fi
