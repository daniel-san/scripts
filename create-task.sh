#!/bin/bash

IFS='|'

read -a task <<< "$(zenity --forms --title="Create Task" --add-entry="Title" --add-list="Tag" --list-values="Home|Work|Fun")"

if [ -z "$task" ]; then
    exit;
fi

title=${task[0]}
tag=${task[1]}

