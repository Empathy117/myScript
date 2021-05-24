#!/bin/bash

# # minotor
# /bin/bash ~/scripts/minotor.sh &

# #export
# /bin/bash ~/scripts/export.sh &

#LANG
export LANGUAGE=zh_CN:en_US

# #jetBrains
export _JAVA_AWT_WM_NONREPARENTING=1 
export AWT_TOOLKIT=MToolkit 
wmname LG3D

#dwm-statusbar
/bin/bash ~/scripts/dwm-status.sh &

#picom
picom -b

#wifi 
nm-applet & 

#scientific network
qv2ray &
#~/bin/ssr-linux.AppImage &

#minotor
xrandr --output HDMI-1-0 --mode 2560x1440 --rate 74.97 --pos 0x0 --rotate normal --output eDP1 --primary --mode 1920x1080 --rate 144.00 --pos 2560x360 --rotate normal 

#background
nitrogen --restore

#neteasr-coludemusic
#netease-cloud-music &

#massage send
dunst &

#screenshots
flameshot &

#fcitx5
fcitx5 & sleep 2

#byrpt
# transmission-qt &

#file manager
pcmanfm -d &
thunar --daemon &
dolphin --daemon &

#volume and backlight
xfce4-volumed-pulse &
xfce4-power-manager &

#emacs
emacs --daemon &

#browser
# chromium

#kdeconnect
kdeconnect-indicator &

#key
#sxhkd &
