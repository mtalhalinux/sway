#!/bin/sh

 
sudo apt install xorg
sudo apt install pulseaudio
sudo apt install alsa-utils
sudo apt install alsa-utils
sudo apt install pavucontrol
sudo apt install compton
sudo apt install picom
sudo apt install kitty
sudo apt install network-manager-gnome
sudo apt instal arandr
sudo apt install geeqie
sudo apt install wget
sudo apt install htop
sudo apt install hardinfo
sudo apt install lxappearance
sudo apt install neofetch
sudo apt install  volumeicon-alsa
sudo apt install galculator
sudo apt install feh

echo "Installing sway"
printf 'y' |sudo apt install sway
printf 'y' |sudo apt install wofi
printf 'y' |sudo apt install waybar

echo "Removing bloatwares"
printf 'y' |sudo apt autoclean 
printf 'y' |sudo apt autoremove
printf 'y' |sudo apt update

echo "Installing ly display manager"
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
sudo systemctl enable ly.service

