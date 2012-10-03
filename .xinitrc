#!/bin/bash
#
# ~/bin/dwm-statusbar
#
# Status bar for dwm (parts taken from http://jasonwryan.com/)

print_volume() {
  volume="$(amixer get Master | tail -n1 | sed -r 's/.*\[(.*)%\].*/\1/')"
  echo -ne "${volume}%"
}

print_datetime() {
  datetime="$(date "+%a %d %b | %H:%M")"
  echo -ne "| ${datetime}"
}

time_start=$(date +%s)
time_end=$(date +%s)
let diff="time_end - time_start"
while true; do
  time_end=$(date +%s)
  let diff="time_end - time_start"
  if [ $diff -le 3600 ]; then
    output="";    
  else
    output="[ BREAK ]";
  fi
  if [ "$diff" -gt 3900 ]; then
    time_start=$(date +%s)
  fi
  print_break() { printf "${output}"; }

xsetroot -name "$(print_break) \
$(print_volume) \
$(print_datetime) "

  sleep 1

done &

setxkbmap -layout "us, ru" -option "grp:ctrl_shift_toggle"
feh --bg-fill /home/zayac/.wallpaper.png
exec dwm
