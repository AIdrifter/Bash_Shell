#!bin/bash

NOTEBOOK=/home/pin/Desktop/git-hub/Bash_Shell/notebook
if [ ! -z "$1" ] ;then
  cat $NOTEBOOK/$1
  #/usr/share/vim/vim73/macros/less.sh ~/notebook/$1
else
    exit
fi

if [ ! -z "$2" ];then
vim $NOTEBOOK/$1
fi
