#!/bin/sh

sudo apt install xorg xserver-xorg xutils mesa-utils xinit openbox obconf i3 dmenu lxappearance git sakura xterm feh nitrogen thunar materia-gtk-theme deepin-icon-theme network-manager -yy

sudo apt install tint2 xcompmgr geany unzip build-essential pulseaudio pavucontrol lightdm fonts-font-awesome rofi gsimplecal curl lemonbar sxhkd wget youtube-dl plank lxtask lxpolkit vlc spectrwm -yy

sudo apt install parcellite lxterminal vim i3blocks breeze-cursor-theme breeze-gtk-theme breeze-icon-theme gparted ark neofetch flatpak i3lock-fancy -yy

sudo apt install lightdm-gtk-greeter lightdm-gtk-greeter-settings polybar -yy

cp spectrwm.conf ~/.spectrwm.conf

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
mkdir -p ~/.config/i3blocks
mkdir -p ~/.local/share/applications
mkdir -p ~/.config/lxterminal
mkdir -p ~/.config/rofi
mkdir -p ~/Downloads
mkdir -p ~/Documents
mkdir -p ~/Pictures

mkdir -p ~/.icons/default

cd i3blocks
chmod +x dwm_resources.sh
chmod +x time
chmod +x timeonly.sh
chmod +x dwmweather

cd ..

cd i3
chmod +x testwallpaper
cd ..



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

cd rofi
cp -r * ~/.config/rofi
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

cd i3blocks
cp -r * ~/.config/i3blocks
cd ..

cd tint2
cp -r * ~/.config/tint2
cd ..

cd spectrwm
cp -r * ~/.config/spectrwm
cd ..

cp vim.desktop ~/.local/share/applications/vim.desktop
cp powermenu.sh ~/powermenu.sh
cp lxterminal.conf ~/.config/lxterminal/lxterminal.conf

cp index.theme ~/.icons/default/index.theme

cp bashrc ~/.bashrc

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
echo "SNAP : From sxhkd do 'snap run brave' instead of just 'brave' "
echo "Appimage: Get appimagelauncher from releases.  Do 'appimagelauncher-lite...AppImage install' in terminal."
echo "Get Beautyline icon from gnome.  Extract and copy into /usr/share/icons."
echo "Get Prismatic theme and put in .themmes folder.  Obconf"
echo "greeter-hide-users=false  in /etc/lightdm/lightdm.conf"

