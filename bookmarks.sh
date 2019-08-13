#!/bin/sh
cat ~/bookmarks | dmenu -l 20 | awk '{print $1}' | xargs -I {} surf {}
