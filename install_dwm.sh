#!/bin/sh


sudo pacman -Syy
sudo pacman -Syu


sudo pacman -Sy base-devel git
sudo pacman -Sy xorg-server xorg-xinit libx11 libxinerama libxft webkit2gtk


#mkdir suckless
cd suckless

#git clone https://git.suckless.org/st
cd st
sudo make clean install
cd ..

#git clone https://git.suckless.org/dwm
cd dwm
sudo make clean install
cd ..

#git clone https://git.suckless.org/slstatus
cd slstatus
sudo make clean install
cd ..

#git clone https://git.suckless.org/dmenu
cd dmenu
sudo make clean install
cd ..


cd /home/$(whoami)
echo "slstatus&" >> .xinitrc
echo "exec dwm" >> .xinitrc

echo "startx" >> .bash_profile
