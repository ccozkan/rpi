#!/bin/bash
echo 'some dependentes and files'
sudo apt-get install bluez pulseaudio-module-bluetooth python-gobject python-gobject-2 cmus mplayer vim

echo 'pihole'

curl -L https://install.pi-hole.net | bash

echo 'customization'
cat bashu >> .bashrc
mkdir Paketler/
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd Paketler
git clone https://github.com/ozkancc/dotfiles 
git clone https://github.com/np1/mps
cp dotfiles/.vimrc ~/.vimrc

echo 'dont forget to change the passwd'


