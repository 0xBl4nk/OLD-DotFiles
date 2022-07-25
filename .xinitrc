xrdb -merge $HOME/.Xresources &
xrandr --output HDMI-A-0 --mode 2560x1080 --rate 75 &

picom --config $HOME/.config/picom.conf &
feh --bg-fill $HOME/Pictures/wallpaper.jpg &

exec pulseaudio &
setxkbmap -model abnt2 -layout br -variant abnt2 &

exec i3
