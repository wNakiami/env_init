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

if [ ! -d $LOCAL/.env_init ]
then
    echo "clone env_init..."
    git clone https://github.com/wNakiami/env_init.git $LOCAL/.env_init
fi

echo 'init over'
