#! /usr/bin/env bash

SCRIPT=$(readlink "$0")
SCRIPTPATH=$(dirname  "$SCRIPT")

[ ! -d "$HOME/.local" ] && mkdir -p "$HOME/.local" 2> /dev/null
[ ! -d "$HOME/.local/bin" ] && mkdir -p "$HOME/.local/bin" 2> /dev/null
[ ! -d "$HOME/.local/etc" ] && mkdir -p "$HOME/.local/etc" 2> /dev/null

cp $SCRIPTPATH/init/*.sh "$HOME/.local/etc/"
cp $SCRIPTPATH/init/*.zsh "$HOME/.local/etc/"
