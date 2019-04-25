#!/bin/sh
#Picks a file name for the output based on availability

if [[ -f $HOME/output.mkv ]]
    then
        n=1
         while [[ -f $HOME/output_$n.mkv ]]
         do
             n=$((n+1))
         done
        filename="$HOME/output_$n.mkv"
    else
        filename="$HOME/output.mkv"
fi

#The actual ffmpeg command to start recording
#Desktop audio and microphone audio will both be recorded
#Get your devices names with
#pactl list sources; or
#pactl list sources | grep Name | awk '{print $2}'; for only the names


ffmpeg -y \
-f x11grab \
-s $(xdpyinfo | grep dimensions | awk '{print $2;}') \
-i :0.0 \
-f pulse -ac 2 -ar 48000 -i alsa_output.pci-0000_00_1b.0.analog-stereo.monitor \
-f pulse -ac 2 -ar 48000 -i alsa_input.pci-0000_00_1b.0.analog-stereo \
-filter_complex amix=inputs=2 \
-c:v libx264 -r 30 -c:a flac $filename

#-f alsa -i default \
