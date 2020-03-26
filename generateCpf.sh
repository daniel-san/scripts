#!/bin/sh
cpf=$(node ~/scripts/node/cpfGenerator.js)
echo $cpf | xclip -selection clipboard
notify-send "O cpf '$cpf' foi copiado para clipboard" &
