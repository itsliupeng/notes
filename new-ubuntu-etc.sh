#!/usr/bin/env sh
echo "install git gcc g++"
sudo apt-get -y install git gcc g++
if [ -e ~/.vim ]
then
  echo "install vimrc"
  git clone https://github.com/itsliupeng/macvim.git ~/.vim  && ln -s ~/.vim/vimrc ~/.vimrc && source ~/.vimrc
else
  echo "~/.vim has existed"
fi



