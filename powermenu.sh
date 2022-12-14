#!/bin/bash

# Options for powermenu
lock="    Lock"
logout="    Logout"
shutdown="    Shutdown"
reboot="    Reboot"
sleep="    Sleep"

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
                  -config "~/.config/rofi/config.rasi"\
                  -font "Freemono bold 16"\
                  -width "15"\
                  -lines 5\
                  -line-margin 3\
                  -line-padding 10\
                  -scrollbar-width "0" )

# Do something based on selected option
if [ "$selected_option" == "$lock" ]
then
    i3lock-fancy
elif [ "$selected_option" == "$logout" ]
then
    pkill i3
    pkill dwm
    pkill spectrwm
    pkill openbox
    pkill bspwm
    pkill python
    pkill qtile
elif [ "$selected_option" == "$shutdown" ]
then
	loginctl poweroff
	#SEE SUDOERS and .bashrc
    ###systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    loginctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    amixer set Master mute
    loginctl suspend
else
    echo " "
fi
