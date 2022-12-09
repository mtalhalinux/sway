#!/bin/sh

sudo apt -y update

echo "Installing base needed packages"
sudo apt -y install xorg
sudo apt -y install pulseaudio
sudo apt -y install alsa-utils
sudo apt -y install pavucontrol
sudo apt -y install kitty
sudo apt -y install nm-applet
sudo apt -y install arandr
sudo apt -y install geeqie
sudo apt -y install wget
sudo apt -y install htop
sudo apt -y install hardinfo
sudo apt -y install lxappearance
sudo apt -y install neofetch
sudo apt -y install volumeicon-alsa
sudo apt -y install galculator
sudo apt -y install feh
sudo apt -y install firefox-esr
sudo apt -y install pcmanfm
sudo apt -y install vlc
sudo apt -y install xarchiver
sudo apt -y install gparted
sudo apt -y install gnome-calculator
sudo apt -y install ttf-font-awesome

echo "Installing free download manager"
wget https://dn3.freedownloadmanager.org/6/latest/freedownloadmanager.deb
sudo dpkg -i freedownloadmanager.deb

echo "Installing sway"
sudo apt -y install sway
sudo apt -y install rofi
sudo apt -y install polybar
sudo apt -y install dmenu

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
cd ../
sudo systemctl enable ly.service

echo "Installing compton of dual kawase"
https://github.com/tryone144/compton.git
cd compton
make
make docs
make install
cd ../

echo "Now copying config files"

echo " For rofi"
sudo mkdir -p ~/.local/share/rofi/themes/
cd rofi
sudo cp rofi/spotlight-dark.rasi ~/.local/share/rofi/themes/
echo "Done"

echo "For polybar"
sudo cp polybar /home/"$USER"/.config
echo "Done"

echo "For sway"
sudo cp sway /home/"$USER"/.config
echo "Done"

echo "For compton"
sudo cp compton /home/"$USER"/.config
echo "done"
