#!/bin/bash

is_lid_open() {
  LID_STATE_FILE=$(find /proc/acpi/button/lid/ -type f -name state 2>/dev/null | head -n 1)

  if [[ -z "$LID_STATE_FILE" ]]; then
    echo "Could not find lid state file."
    exit 1
  fi

  LID_STATE=$(grep -i 'state' "$LID_STATE_FILE" | awk '{print $2}')

  if [[ "$LID_STATE" == "open" ]]; then
    echo "open"
  else
    echo "closed"
  fi
}
