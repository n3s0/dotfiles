#!/usr/bin/bash

#sys_uptime$()
#eth_status$()
conn_wireless=$(iwgetid -r)

battery_perc=$(cat /sys/class/power_supply/BAT0/capacity)
battery_state=$(cat /sys/class/power_supply/BAT0/status)

date="  $(date "+%m-%d-%Y")"
time="󱑆  $(date "+%H:%M %Z")"

echo "[   $conn_wireless ] [   $battery_perc% ] [ $date | $time ]"
