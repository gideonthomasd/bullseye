#!/bin/sh

sudo apt install xorg xserver-xorg xutils mesa-utils xinit openbox obconf i3 dmenu lxappearance git sakura xterm feh nitrogen firefox-esr thunar materia-gtk-theme deepin-icon-theme network-manager -yy

sudo apt install tint2 xcompmgr geany unzip build-essential pulseaudio pavucontrol lightdm fonts-font-awesome rofi gsimplecal curl lemonbar sxhkd wget youtube-dl plank lxtask lxpolkit vlc spectrwm -yy

sudo apt install flatpak -yy

sudo apt install polybar -yy

cp spectrwm.conf ~/.spectrwm.conf
cp bashrc ~/.bashrc

chmod +x *.sh

cp jgmenu_create.sh ~/jgmenu_create.sh

mkdir -p ~/.config/jgmenu
mkdir -p ~/.config/openbox
mkdir -p ~/.config/plank
mkdir -p ~/.config/polybar
mkdir -p ~/.config/sakura
mkdir -p ~/.config/spectrwm
mkdir -p ~/.config/tint2
mkdir -p ~/.config/i3

mkdir -p ~/.icons/default


cd openbox
chmod +x *.sh
cd ..

cd polybar
chmod +x *.sh
cd scripts
chmod +x *.sh
cd ..
cd ..

cd jgmenu
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

cd i3
cp -r * ~/.config/i3
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

cd spectrwm
cp -r * ~/.config/spectrwm
cd ..

cp index.theme ~/.icons/default/index.theme

sudo dpkg -i jgmenu_4.3.0-1+b1_amd64.deb

sudo systemctl enable lightdm.service

sudo systemctl unmask lightdm.service
sudo systemctl daemon-reload

sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sudo apt install snapd
sudo snap install core

echo "PATH=$PATH:/snap/bin" >> .bashrc

sudo systemctl --user restart pulseaudio.service
sudo snap install snap-store
echo "SNAP: For menu entry copy /var/lib/snapd/desktop/applications to /home/phil/.local/share/applications"





