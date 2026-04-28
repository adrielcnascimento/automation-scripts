#!/bin/bash
#Este script instala varias aplicações. Lembre-se de estar conectado a internet
#Primeiro ele limpa o cache e atualiza o sistema para uma versão mais atual
#Veja se ele está no diretório /home/usuário para melhor funcionamento do script
#


sudo apt-get clean
sudo apt-get update
sudo apt-get install rpi-update
sudo rpi-update
sudo apt-get -y dist-upgrade

sudo cp –ax /usr/share/themes/PiX ~/.themes
sudo rm /etc/xdg/autostart/clipit-startup.desktop
sudo rm /etc/xdg/autostart/wicd-tray.desktop
sudo rm –rf /var/lib/menu-xdg
sudo rm /usr/share/applications/obconf.desktop


#Instalar bibliotecas basicas pra compilaçao 
sudo  apt-get  install  build-essential

#Instalaçao do	'drivers' usb do dongle

sudo apt-get install  libusb-1.0-0-dev -y
sudo apt-get install cmake

#instalar o git
sudo apt-get install git 
sudo apt-get install git-core

#Instalar Synaptic
sudo apt-get install synaptic -y

#Instalar cowsay (Vaquinha com mensagens filosóficas) 
sudo apt-get install cowsay -y
sudo apt-get install sl -y
sudo apt-get install fortune -y
	
#Instalar GNU-RADIO
sudo apt-get install gnuradio -y

#Adicionar o dvd_usb na blacklist 

sudo printf 'blacklist dvb_usb_rtl28xxu\nblacklist rtl2832\nblacklist rtl2830' > /etc/modprobe.d/nortl.conf

#Instalar o Dump1090

git  clone  git://github.com/MalcolmRobb/dump1090.git
cd  dump1090
sudo make


#instalar o SDR e configurar automaticamente 

git clone git://git.osmocom.org/rtl-sdr.git

cd rtl-sdr/
mkdir build
cd build

sudo cmake ../ -DINSTALL_UDEV_RULES=ON
sudo make
sudo make install
sudo ldconfig

cd ~
sudo  cp  ./rtl-sdr/rtl-sdr.rules  /etc/udev/rules.d/

#Instalar KODI
sudo apt-get install kodi -y
sudo apt-get install kodi-pvr-iptvsimple -y

#Instalar Motion

sudo apt-get install motion -y
sudo apt-get install libv4l-0 -y
sudo apt-get install uvccapture -y

#criar Servidor LAMP (Linux + Apache + MySQL +PhP)
#Install apache webserver

sudo apt-get install apache2 -y

#Install mysql
#The mysql database server is also available through the Debian repositories and installed as

sudo apt-get install mysql-server -y

#During the install there is a prompt request for a password.
#The password is for the mysql root user.

#Install PhP services 
sudo apt-get install php5

#Instalaçao do i2c-tools DVK511
sudo apt-get install i2c-tools 

#Instalação Webmin

#baixar as bibliotecas

sudo apt-get install perl libnet-ssleay-perl openssl libauthen-pam-perl libpam-runtime libio-pty-perl apt-show-versions python

#baixar o arquivo do programa

wget http://prdownloads.sourceforge.net/webadmin/webmin_1.850_all.deb

#instalar o *deb

dpkg --install webmin_1.850_all.deb

#instalaçao do retropie

sudo apt-get install -y git dialog

#Download the latest RetroPie setup script:

    git clone --depth=1 https://github.com/RetroPie/RetroPie-Setup.git

    