#!/bin/sh

sudo apt install xorg xserver-xorg xutils mesa-utils xinit openbox obconf spectrwm dmenu lxappearance git sakura xterm feh nitrogen firefox-esr thunar materia-gtk-theme deepin-icon-theme -yy

sudo apt install tint2 xcompmgr geany unzip build-essential pulseaudio pavucontrol lightdm fonts-font-awesome rofi gsimplecal curl lemonbar sxhkd wget youtube-dl -yy

sudo apt install polybar -yy

cp spectrwm.conf ~/.spectrwm.conf

mkdir -p ~/.config/jgmenu
mkdir -p ~/.config/openbox
mkdir -p ~/.config/plank
mkdir -p ~/.config/polybar
mkdir -p ~/.config/sakura
mkdir -p ~/.config/spectrwm
mkdir -p ~/.config/tint2


cd openbox
chmod +x *.sh
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd spectrwm
chmod +x *.sh
cd ..


cd jgmenu
cp -r * ~/.config/jgmenu
cd ..

cd openbox
cp -r * ~/.config/openbox
cd ..

cd plank
cp -r * ~/.config/plank
cd ..

cd polybar
cp -r * ~/.config/polybar
cd ..

cd sakura
cp -r * ~/.config/sakura
cd ..

cd spectrwm
cp -r * ~/.config/spectrwm
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

sudo dpkg -i jgmenu_4.3.0-1+b1_amd64.deb

sudo systemctl enable lightdm.service

sudo systemctl unmask lightdm.service
sudo systemctl daemon-reload

sudo systemctl --user restart pulseaudio.service





