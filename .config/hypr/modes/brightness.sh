#!/bin/bash

get_current_brightness() {
  brightnessctl -m | awk -F, '{gsub("%",""); print $4}'
}

notify_user() {
  current=$(get_current_brightness)
  notify-send -e -h string:x-canonical-private-synchronous:osd -h int:value:$current -u low "Brightness" $current
}

if [[ "$1" == "--increase" ]]; then
  brightnessctl set 5%+
  notify_user
elif [[ "$1" == "--decrease" ]]; then
  brightnessctl -n2 set 5%-
  notify_user
else
  echo "Call this script with '--increase' or '--decrease' as parameter."
fi
