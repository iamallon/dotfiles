#!/usr/bin/env bash

uptime_formatted=$(($(date +%s) - $(sysctl kern.boottime | cut -d ',' -f1 | cut -d ' ' -f5)))
date_formatted=$(date "+%a %F %H:%M:%S")
battery_capacity=$(sysctl hw.acpi.battery.life | cut -d ' ' -f2)

echo "uptime: ${uptime_formatted}s | battery: ${battery_capacity:=N/A}% | ${date_formatted}"
