#!/bin/sh
#Picks a file name for the output based on availability

if [[ -f ~/output.mkv ]]
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

ffmpeg -y \
-f x11grab \
-s 1920x1080 \
-i :0.0+1366,0 \
-f alsa -i default \
-c:v libx264 -r 30 -c:a flac $filename
