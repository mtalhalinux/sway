#!/bin/sh

sudo apt -y update

echo "Installing base needed packages"
sudo apt -y install xorg
sudo apt -y install pulseaudio
sudo apt -y install alsa-utils
sudo apt -y install alsa-utils
sudo apt -y install pavucontrol
sudo apt -y install compton
sudo apt -y install picom
sudo apt -y install kitty
sudo apt -y install network-manager-gnome
sudo apt -y instal arandr
sudo apt -y install geeqie
sudo apt -y install wget
sudo apt -y install htop
sudo apt -y install hardinfo
sudo apt -y install lxappearance
sudo apt -y install neofetch
sudo apt -y install  volumeicon-alsa
sudo apt -y install galculator
sudo apt -y install feh

echo "Installing sway"
sudo apt -y install sway
sudo apt -y install wofi
sudo apt -y install waybar

echo "Removing bloatwares"
sudo apt -y autoclean 
sudo apt -y autoremove
sudo apt -y update

echo "Installing ly display manager"
sudo apt install build-essential libpam0g-dev libxcb-xkb-dev
git clone --recurse-submodules https://github.com/fairyglade/ly
cd ly
make
make install installsystemd
sudo systemctl enable ly.service

