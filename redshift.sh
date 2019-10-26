#!/bin/sh
echo -e "3000\n3500\n4000\n6500" | dmenu -p "Set Redshift to:" -fn 'mononoki:size=12' -nb '#292d3e' -sb '#c93648' -sf '#292d3e'| xargs -I {} redshift -P -O {}
