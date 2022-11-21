#!/bin/bash

#sudo apt install xserver-xorg xinit
#sudo apt install libpangocairo-1.0-0
#sudo apt install python3-pip python3-xcffib python3-cairocffi

#pip install qtile

sudo xbps-install qtile

cd rofi
cd applets
cd applets
chmod +x *.sh
cd ..
cd ..
cd launchers
cd colorful
chmod +x *.sh
cd ..
cd ..
cd ..

mkdir -p ~/.config/rofi

cd rofi
cp -r * ~/.config/rofi
cd ..

cd qtile
#sudo cp qtile.desktop /usr/share/xsessions/qtile.desktop
chmod +x *.sh
cd ..

mkdir -p ~/.config/qtile
cd qtile
cp -r * ~/.config/qtile
cd ..

#pip install psutil
