#!/usr/bin/env bash

uptime_formatted=$((($(date +%s) - $(sysctl kern.boottime | cut -d ',' -f1 | cut -d ' ' -f5)) / 60))
date_formatted=$(date "+%a %F %H:%M:%S")
battery_capacity=$(sysctl hw.acpi.battery.life | cut -d ' ' -f2)
cpu_temp=$(sysctl dev.cpu | grep temperature | cut -d'C' -f1 | cut -d ' ' -f2 | awk '{sum += $1} END {printf"%.1f", sum / '"$(nproc)"'}')

echo "up ${uptime_formatted} min(s) | cpu: ${cpu_temp:=N/A}C | battery: ${battery_capacity:=N/A}% | ${date_formatted}"
