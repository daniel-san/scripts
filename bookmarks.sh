#!/bin/sh
cat ~/bookmarks | dmenu -l 20 -fn 'mononoki:size=12' -sb '#c93648' -p 'Select bookmark:' | awk '{print $1}' | xargs -I {} surf {}
