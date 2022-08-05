#!/bin/bash 

apt update
apt upgrade
apt-get -y dist-upgrade
apt-get -y install build-essential ca-certificates libqt5widgets5 qt5-default libqt5gui5 libfreetype6 apache2 zip unzip ttf-mscorefonts-installer libapache2-mod-fcgid zlib1g-dev freetype2* ttf-*
apt autoremove
apt-get autoremove

ln -s /usr/lib/libfreetype.so.6 /usr/lib/libfreetype.so

mkdir /home/tmp

cd /home/tmp
     
wget https://package.windev.com/pack/wx27/install/wx27_103s/us/WBDEP27LINUXPACKDVDUS103s.zip?s=N27A012673

mv WBDEP27LINUXPACKDVDUS103s.zip\?s\=N27A012673  WBDEP27LINUXPACKDVDUS103s.zip

unzip WBDEP27LINUXPACKDVDUS103s.zip

cd Linux64x86/

chmod 777 *64

./webdev_install64 

cd /home

rm -rf tmp

rm -rf wb26install
