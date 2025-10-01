#!/bin/bash

OPTION=$(echo -e " Normal\n Estudo\n Madrugada\n Leitura" | rofi -dmenu -p "Modo Proteção Ocular:" -theme-str 'window {width: 25%;}')

case "$OPTION" in
" Normal")
  hyprsunset -t 6500 -g 100
  notify-send " Modo Normal" "Temperatura: 6500K"
  ;;
"  Estudo")
  hyprsunset -t 4000 -g 95
  notify-send "  Modo Estudo" "Temperatura: 4000K"
  ;;
"  Madrugada")
  hyprsunset -t 3500 -g 90
  notify-send "  Modo Madrugada" "Temperatura: 3500K"
  ;;
"  Leitura")
  hyprsunset -t 3000 -g 85
  notify-send "  Modo Leitura" "Temperatura: 3000K"
  ;;
esac
