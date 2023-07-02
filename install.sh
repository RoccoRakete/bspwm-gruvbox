#!/bin/bash

# full system update 
sudo pacman -Syu

# install dependencies
# pacman
sudo pacman -S kate jq xorg-xrandr neofetch gnome-keyring libsecret libgnome-keyring seahorse stalonetray feh rofi kitty bspwm polybar thunar thunar-archive-plugin firefox lightdm thunderbird flatpak picom pavucontrol sxhkd fish htop btop git xfce4-power-manager dunst xorg-xsetroot playerctl papirus-icon-theme

# install yay as aur helper
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# yay (AUR)
yay -S ttf-weather-icons nerd-fonts-git xfce-polkit lssecret-git themix-full-git lxappearance pywal thunar-shares-plugin

# unused dependencies for now 
# AUR 
# vscodium

# Arch repo

# flatpak
flatpak install com.spotify.Client

# create config directory
mkdir -p ~/configs

# copy config
cp -r ~/bspwm-gruvbox/. ~/configs
rm -rf ~/bspwm-gruvbox

# create hardlinks to .config directory
echo "creating systemlinks to configs-directory..."
sleep 5 

rm -rf ~/.config/bspwm 
sudo ln -s ~/configs/bspwm ~/.config/

rm -rf ~/.config/btop 
sudo ln -s ~/configs/btop ~/.config/

rm -rf ~/.config/fish 
sudo ln -s ~/configs/fish ~/.config/

rm -rf ~/.config/gtk-3.0 
sudo ln -s ~/configs/gtk-3.0 ~/.config/

rm -rf ~/.config/htop 
sudo ln -s ~/configs/htop ~/.config/

rm -rf ~/.config/kitty
sudo ln -s ~/configs/kitty ~/.config/

rm -rf ~/.config/neofetch
sudo ln -s ~/configs/neofetch ~/.config/

rm -rf ~/.config/picom 
sudo ln -s ~/configs/picom ~/.config/

rm -rf ~/.config/polybar
sudo ln -s ~/configs/polybar ~/.config/

rm -rf ~/.config/rofi
sudo ln -s ~/configs/rofi ~/.config/

rm -rf ~/.config/sxhkd
sudo ln -s ~/configs/sxhkd ~/.config/

rm -rf ~/.config/themes
sudo ln -s ~/configs/themes ~/.config/

rm -rf ~/.config/Thunar
sudo ln -s ~/configs/Thunar ~/.config/

rm -rf ~/.config/xfce4 
sudo ln -s ~/configs/xfce4 ~/.config/

rm -rf ~/.local/share/fonts
sudo ln -s  ~/configs/fonts/ ~/.local/share/
 
sudo ln -s ~/configs/.themes ~/.themes

sudo ln -s  ~/configs/icons/Future-cursors/ ~/.icons
sudo ln -s  ~/configs/icons/Future-cyan-cursors/ ~/.icons

sudo rm -rf /usr/share/fonts/nerd-fonts-git
sudo ln -s  ~/configs/fonts/nerd-fonts-git /usr/share/fonts 

# make scripts executable
echo "making scripts executable..."
sleep 5 

chmod +X ~/configs/bspwm/autostart.sh
chmod +X ~/configs/bspwm/bspwmrc
chmod +X ~/configs/polybar/launch.sh
chmod +X ~/configs/themes/gruvbox/bspwm/bspwmrc
chmod +X ~/configs/polybar/spotify/media.sh
chmod +X ~/configs/polybar/tray/tray.sh
chmod +X ~/configs/polybar/update/update.sh
chmod +X ~/configs/polybar/weather/weather.sh

# change default shell to fish
chsh -s /bin/fish

# reboot the system
echo "Your system will reboot now..."
sleep 10 
reboot