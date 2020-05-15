#! /usr/bin/env bash

SCRIPT=$(readlink "$0")
SCRIPTPATH=$(dirname  "$SCRIPT")

[ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
[ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
[ ! -d "$HOME/.local/etc" ] && mkdir -p "$HOME/.local/etc" 2> /dev/null
cp $SCRIPTPATH/init/*.sh $HOME/.local/etc/
cp $SCRIPTPATH/init/*.zsh $HOME/.local/etc/

[ ! -d "$HOME/.vim" ] && mkdir -p "$HOME/.vim" 2> /dev/null
[ ! -d "$HOME/.vim/etc" ] && mkdir -p "$HOME/.vim/etc" 2> /dev/null
cp $SCRIPTPATH/vim/*.vim $HOME/.vim/
cp $SCRIPTPATH/vim/etc/* $HOME/.vim/etc

cp $SCRIPTPATH/tmux/init.conf $HOME/.tmux.conf

echo "update over"
