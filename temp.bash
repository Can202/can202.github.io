#!/usr/bin/bash
cp /etc/apt/sources.list /tmp/sources.list
rm -vrf /etc/apt/sources.list
echo "deb http://deb.debian.org/debian/ bullseye main contrib non-free
deb-src http://deb.debian.org/debian/ bullseye main contrib non-free

deb http://security.debian.org/debian-security bullseye/updates main contrib non-free
deb-src http://security.debian.org/debian-security bullseye/updates main contrib non-free

deb http://deb.debian.org/debian/ bullseye-updates main contrib non-free
deb-src http://security.debian.org/debian/ bullseye-updates main contrib non-free
" > /etc/apt/sources.list

apt update

apt install -y gnome-software git firmware-linux

clear
echo "Listo Amigo ;)"
