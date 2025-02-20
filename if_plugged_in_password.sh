#!/usr/bin/bash
a=$(hyprctl monitors | grep "eDP")
exit $?
