#!/bin/sh
delay=1
application=firefox
option=$(echo -e "screen\nwindow\nregion" | \
    dmenu -p "What type of screenshot you want:" -fn 'mononoki:size=12' -nb '#292d3e' -sb '#c93648' -sf '#292d3e')
if [ "$option" = "screen" ]; then
    xfce4-screenshooter -o $application -f -d $delay
elif [ "$option" = "window" ]; then
    xfce4-screenshooter -o $application -w -d $delay
elif [ "$option" = "region" ]; then
    xfce4-screenshooter -o $application -r -d $delay
else
    xfce4-screenshooter
fi
