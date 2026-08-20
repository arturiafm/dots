#!/bin/sh

setxkbmap -layout us -variant colemak_dh -option ctrl:nocaps
xwallpaper --zoom ~/wallpapers/17.png

exec dbus-launch --sh-syntax --exit-with-session dwm
