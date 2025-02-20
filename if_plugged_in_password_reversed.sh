#!/usr/bin/bash
a=$(hyprctl monitors | grep "eDP")
if [[ $? == 0 ]]; then 
	exit 1
else 
	exit 0
fi
