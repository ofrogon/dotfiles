#!/bin/bash

if pgrep -x waybar >/dev/null; then
  pkill -x waybar
fi

uwsm app -- waybar >/dev/null 2>&1 &
