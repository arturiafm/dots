#!/bin/sh

setxkbmap -layout us -variant colemak_dh -option ctrl:nocaps
xwallpaper --zoom "$(find ~/wallpapers -type f | shuf -n 1)"

exec dbus-launch --sh-syntax --exit-with-session dwm
