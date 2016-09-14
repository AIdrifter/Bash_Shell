#!bin/bash
notebook=~/notebook

if [ ! -z "$2" ];then
#vim ~/notebook/$1
    echo "notebook rw mode"
    vim --noplugin $notebook/$1
    exit
fi

if [ ! -z "$1" ] ;then
    # cat ~/notebook/$1
    # cat ~/notebook/$1 | less
    echo "notebook r mode"
    /usr/share/vim/vim73/macros/less.sh $notebook/$1
    exit
fi



