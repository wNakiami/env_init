#! /usr/bin/env bash

#set -x

Usage () {
	cat <<EOF
bootstrap [options]

Options:
    -z          apply zsh environment init config
EOF
	exit 1
}

Start () {
    echo "start init $1 environment..."
    if [ -z `echo $SHELL | grep $1` ]
    then
        echo "current shell is not $1!"
        exit 2
    fi
}

echo "$-"

if [[ $# -gt 1 || $# -eq 0 ]]
then
    Usage
fi

case $1 in
    '-z')
        Start "zsh"
        ;;
    *)
        Usage
        ;;
esac

LOCAL=$HOME/.local

if [ ! -d $LOCAL ]
then
    echo "mkdir $LOCAL..."
    mkdir $LOCAL
fi

ENV=$LOCAL/.env_init
if [ ! -d $ENV ]
then
    echo "clone env_init..."
    git clone https://github.com/wNakiami/env_init.git $ENV
fi

echo "source $ENV" >> $HOME/.zshrc

echo 'init over'
