#! /bin/sh

ntfd &
xfsettingsd &
xfce4-power-manager --daemon &
/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1 &
flameshot & 
nextcloud --background &
nm-applet &
picom -b &
