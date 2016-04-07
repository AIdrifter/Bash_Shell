#!bin/bash

if [ ! -z "$1" ] ;then
  cat ~/notebook/$1
  #/usr/share/vim/vim73/macros/less.sh ~/notebook/$1
else
    exit
fi

if [ ! -z "$2" ];then
vim ~/notebook/$1
fi
