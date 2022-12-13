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
sudo apt -y install nitrogen
sudo apt -y install firefox-esr
sudo apt -y install pcmanfm
sudo apt -y install vlc
sudo apt -y install xarchiver
sudo apt -y install gparted
sudo apt -y install ttf-font-awesome
sudo apt -y install vim


echo "Installing sway"

sudo apt -y install rofi
sudo apt -y install polybar


echo "Removing bloatwares"
sudo apt -y autoclean 
sudo apt -y autoremove



sudo apt -y apt install meson dh-autoreconf libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev xcb libxcb1-dev libxcb-icccm4-dev libyajl-dev libev-dev libxcb-xkb-dev libxcb-cursor-dev libxkbcommon-dev libxcb-xinerama0-dev libxkbcommon-x11-dev libstartup-notification0-dev libxcb-randr0-dev libxcb-xrm0 libxcb-xrm-dev libxcb-shape0 libxcb-shape0-dev
git clone https://github.com/Airblader/i3 i3-gaps
cd i3-gaps
mkdir -p build && cd build
meson --prefix /usr/local
ninja
sudo ninja install
cd ~ 
echo "Installing free download manager"
wget https://dn3.freedownloadmanager.org/6/latest/freedownloadmanager.deb
sudo dpkg -i freedownloadmanager.deb
sudo apt install -f
