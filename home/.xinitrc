#!/bin/sh

while true; do
    xsetroot -name " $(date '+%Y-%m-%d %X') | $(cat /sys/class/power_supply/BAT1/capacity)% "
    sleep 1
done &

setxkbmap -layout us -variant colemak_dh -option ctrl:nocaps
xwallpaper --zoom "$(find ~/wallpapers -type f | shuf -n 1)"

exec dbus-launch --sh-syntax --exit-with-session dwm
