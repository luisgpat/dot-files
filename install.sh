#!/bin/bash

# Install grub
sudo pacman -S grub efibootmgr dosfstools os-prober mtools
# Install drivers, i3, xorg, picom, alacritty and sddm
sudo pacman -Syu
sudo pacman -S xf86-video-nouveau xf86-video-intel mesa i3-gaps i3blocks xorg picom alacritty sddm xorg-setxkbmap rofi pulseaudio man wget pavucontrol nitrogen lxappearance arch-theme  

# Installing yay
sudo pacman -S --need base-devel
sudo git clone https://aur.archlinux.org/yay.git
sudo chown -R luis:luis yay
cd yay
makepkg -si
cd ..

#Enabling sddm
sudo systemctl enable sddm.service

# Installing various software
sudo yay -S vivaldi nerd-fonts-fira-code neovim zip unzip thunar

# Copying awesome fonts
wget https://github.com/FortAwesome/Font-Awesome/releases/download/6.1.0/fontawesome-free-6.1.0-web.zip
unzip fontawesome-free-6.1.0-web.zip
mkdir ~/.fonts
mv ./.fontawesome-fre-6.1.0-web.zip/webfonts/*.ttf ~/.fonts

# Copying i3 config
cp ./config ~/.config/i3/config
cp -r ./scripts ~/.config/i3/
# copying libinput conf
cp ./40-libinput.conf /usr/share/X11/xorg.conf.d/
mkdir ~/.config/i3blocks 
cp ./i3blocks/config ~/.config/i3blocks/
cp rofi ~/.config
