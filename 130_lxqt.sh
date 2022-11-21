#!/bin/bash

mkdir -p ~/.config/lxqt

cd lxqt
cp -r * ~/.config/lxqt
cd ..

flatpak install flathub com.brave.Browser
