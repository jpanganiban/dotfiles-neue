xrdb -merge ~/.Xresources

feh --bg-center ~/.wallpaper

setxkbmap -option "ctrl:nocaps"

udiskie -2 &

run_conky &

: ${WM:="dwm"}

exec ${WM}
