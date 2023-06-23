#!/bin/bash

# install dependencies
# pacman
#sudo pacman -S feh rofi kitty bspwm polybar thunar thunar-archive-plugin firefox lightdm nextcloud kwallet kwallet-pam kwalletmanager thunderbird nextcloud-client flatpak picom pavucontrol sxhkd fish htop btop git xfce4-power-manager dunst  

# install yay as aur helper
#sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# yay (AUR)
#yay -S themix-full-git lxappearance nerd-fonts-git pywal thunar-shares-plugin visual-studio-code-bin  

# flatpak
#flatpak install com.spotify.Client

# create config directory
mkdir -p ~/configs

# copy config
cp -r ~/bspwm-gruvbox/. ~/configs
rm -rf ~/bspwm-gruvbox

# create hardlinks to .config directory
rm -rf ~/.config/betterlockscreen 
sudo ln -s ~/configs/betterlockscreen ~/.config/

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
 
sudo ln -s ~/configs/.themes ~/.themes

sudo ln -s ~/configs/Future-cursors ~/.icons

# make scripts executable
chmod +X ~/configs/bspwm/autostart.sh
chmod +X ~/configs/bspwm/bspwmrc
chmod +X ~/configs/polybar/launch.sh
chmod +X ~/configs/themes/gruvbox/bspwm/bspwmrc
chmod +X ~/configs/polybar/spotify/media.sh
chmod +X ~/configs/polybar/tray/tray.sh
chmod +X ~/configs/polybar/update/update.sh
chmod +X ~/configs/polybar/weather/weather.sh

# restart bspwm / reload sxhkd config
startx bspwm
bspc wm -r
pkill -USR1 -x sxhkd

# change default shell to fish
 #echo /usr/local/bin/fish | sudo tee -a /etc/shells
  chsh -s /bin/fish