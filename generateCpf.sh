#!/bin/sh
cpf=$(node /home/daniel/cpfGenerator.js)
echo $cpf | xclip -selection clipboard
notify-send "O cpf '$cpf' foi copiado para clipboard" &
