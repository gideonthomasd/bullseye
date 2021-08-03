#!/usr/bin/env bash
sudo apt-get install build-essential cpanminus git
git clone https://github.com/trizen/obmenu-generator
sudo cp obmenu-generator/obmenu-generator /usr/bin
mkdir -p ~/.config/obmenu-generator

sudo cp  obmenu-generator/schema.pl ~/.config/obmenu-generator/schema.pl
sudo cpanm Linux::DesktopFiles
sudo cpanm Data::Dump
sudo chmod 777 /usr/bin/obmenu-generator.

obmenu-generator -p -i.
