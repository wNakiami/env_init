#! /usr/bin/env bash

#set -x
set -e

ENV=$HOME/.env_init
if [ ! -d $ENV ]
then
    git clone https://github.com/wNakiami/env_init.git $ENV
fi

cd $ENV
sh update.sh

INIT=$HOME/.local/etc/init.sh

if [ -f "$HOME/.bashrc" ]
then
    echo $INIT >> $HOME/.bashrc
    echo "umask 022" >> $HOME/.bashrc
fi

if [ -f "$HOME/.zshrc" ]
then
    echo $INIT >> $HOME/.zshrc
    echo "umask 022" >> $HOME/.zshrc
fi

echo 'init over'
