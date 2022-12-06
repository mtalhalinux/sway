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

echo "Installing sway"
printf 'y' |sudo apt install sway
echo "Removing bloatwares"

printf 'y' |sudo apt autoclean 
printf 'y' |sudo apt autoremove
printf 'y' |sudo apt update

echo "Installing ly display manager"
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
sudo systemctl enable ly.service

