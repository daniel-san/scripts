#!/bin/bash

# define a QUICK_CAPTURE_FILE variable in your shell rc file, .profile or somewhere else
qc="$QUICK_CAPTURE_FILE"

note="$(zenity --forms --title="Quick Capture" --add-entry=Note --text="Add to Quick Capture")"

if [ -z "$note" ]; then
    exit;
fi

note=$'\n'$note

echo $note >> $qc
