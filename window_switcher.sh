#!/bin/bash
niri msg -j windows \
  | jq '.[] | "\(.id)\t\(.app_id): \(.title | tostring[:35])"' -r  \
  | fuzzel -d -i -w 60 -p "Where? " \
  | awk '{print $1}' \
  | xargs niri msg action focus-window --id
