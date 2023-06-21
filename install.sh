#!/binbash

# install dependencies
# pacman
sudo pacman -S 
feh \
rofi \
kitty \
bspwm \
polybar \
thunar \
thunar-archive-plugin \
firefox \
lightdm \
nextcloud \
kwallet \
kwallet-pam \
kwalletmanager \
thunderbird \
nextcloud-client \
flatpak \
picom \
pavucontrol \
sxhkd \
fish \
htop \
btop \
git \

# install yay as aur helper

pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

# yay (AUR)
yay -S 
themix-full-git \
lxappearance \
nerd-fonts-git \
pywal \
thunar-shares-plugin \
visual-studio-code-bin \

# flatpak
flatpak install com.spotify.Client

# create config directory
mkdir -p ~/configs

# clone repository
git clone https://github.com/Martin1134/bspwm-gruvbox.git && cd bspwm-gruvbox


