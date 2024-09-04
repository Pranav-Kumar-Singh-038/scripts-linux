#!/bin/bash
DEVICE="/dev/input/event16"  # Replace with your specific device (SIGMACHIP Usb Mouse)
DEBOUNCE_TIME=0.2  # Adjust debounce time in seconds

last_click_time=0

while true; do
  current_time=$(date +%s.%N)
  click_time_diff=$(echo "$current_time - $last_click_time" | bc)

  if (( $(echo "$click_time_diff > $DEBOUNCE_TIME" | bc -l) )); then
    cat "$DEVICE" > /dev/null 2>&1
    last_click_time=$current_time
  fi

  sleep 0.01  # Adjust polling rate if necessary
done