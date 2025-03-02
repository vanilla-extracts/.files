#!/usr/bin/bash
a=$(cat /sys/class/power_supply/BAT1/status)
if [[ $a  == "Discharging" ]]; 
then
exit 0;
else
exit 1;
fi
