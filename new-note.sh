#!/bin/bash

IFS='|'

read -a note <<< "$(zenity --forms --title="Create New Note" --add-entry="Title" --add-entry="Note" --text="Create New Note")"

if [ -z "$note" ]; then
    exit;
fi

note_title=${note[0]}
note_content=${note[1]}

