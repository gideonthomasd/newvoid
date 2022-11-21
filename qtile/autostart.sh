#!/bin/sh

setxkbmap gb &
lxpolkit &
picom &
sxhkd -c $HOME/.config/bspwm/sxhkdrc &
nm-applet &
blueman-applet &
$HOME/.config/qtile/wallpaper.sh &
#feh --bg-scale  ~/Pictures/wallpapers/qtile.png &
parcellite &
volumeicon &
#~/.config/bspwm/testwallpaper &
