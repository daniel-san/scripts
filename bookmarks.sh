#!/bin/sh
cat /home/daniel/bookmarks | dmenu -l 20 | awk '{print $1}' | xargs -I {} surf {}
