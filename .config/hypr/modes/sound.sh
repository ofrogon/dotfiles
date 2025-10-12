#increse
wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+
#decrease
wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
#mute
wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle



#!/bin/bash

notofy_user() {
  
}

if [[ "$1" == "--increase" ]]; then
  hyprctl keyword monitor "eDP-1, preferred, 3440x700, 1"
  notify-send "Écran du laptop ouverte"
  hyprctl reload
elif [[ "$1" == "--decrease"]]

elif [[ "$1" == "--toggle-mute" ]]

else
  notify-send "Unknown parameter"
fi
