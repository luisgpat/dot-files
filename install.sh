#!/bin/bash

# Install drivers, i3, xorg, picom, alacritty and sddm
sudo pacman -S xf86-video-nouveau xf86-video-intel mesa i3-gaps i3blocks xorg picom alacritty sddm vim xorg-setxkbmap rofi pulseaudio man wget pavucontrol nitrogen lxappearance arch-theme 

# Installing yay
sudo pacman -S --need base-devel
sudo pacman -S git
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R luis:luis yay
cd yay
makepkg -si

#Enabling sddm
sudo systemctl enable sddm.service

# Installing various software
sudo yay -S vivaldi nerd-fonts-fira-code neovim zip unzip

# Copying awesome fonts
wget https://github.com/FortAwesome/Font-Awesome/releases/download/6.1.0/fontawesome-free-6.1.0-web.zip
unzip fontawesome-free-6.1.0-web.zip
mkdir ~/.fonts
mv ./.fontawesome-fre-6.1.0-web.zip/webfonts/*.ttf ~/.fonts

