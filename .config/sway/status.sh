#!/usr/bin/env bash

uptime_formatted=$(uptime | cut -d ',' -f1  | cut -d ' ' -f4,5)
date_formatted=$(date "+%a %F %H:%M:%S")
battery_internal_capacity=$(cat /sys/class/power_supply/BAT0/capacity)
battery_external_capacity=$(cat /sys/class/power_supply/BAT1/capacity)

echo "$uptime_formatted | ${battery_internal_capacity:=N/A}% | ${battery_external_capacity:=N/A}% | $date_formatted"
