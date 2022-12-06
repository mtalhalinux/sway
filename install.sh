#!/bin/sh

printf 'y'| sudo apt update 
printf 'y' |sudo apt install xorg
printf 'y' |sudo apt install pulseaudio
printf 'y' |sudo apt install alsa-utils
printf 'y' |sudo apt install alsa-utils
printf 'y' |sudo apt install pavucontrol
printf 'y' |sudo apt install compton
printf 'y' |sudo apt install picom
printf 'y' |sudo apt install kitty
printf 'y' |sudo apt install network-manager-gnome
printf 'y' |sudo apt instal arandr
printf 'y' |sudo apt install geeqie
printf 'y' |sudo apt install wget
printf 'y' |sudo apt install htop
printf 'y' |sudo apt install hardinfo
printf 'y' |sudo apt install lxappearance
printf 'y' |sudo apt install neofetch
printf 'y' |sudo apt install  volumeicon-alsa
printf 'y' |sudo apt install galculator
printf 'y' |sudo apt install feh

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

