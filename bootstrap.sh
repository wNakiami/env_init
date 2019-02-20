#! /usr/bin/env bash

Usage () {
	cat <<EOF
bootstrap [options]
EOF
	exit 1
}

PARAM=$1

if [ "$PARAM" = "" ]; then
	Usage
elif [ "$PARAM" = "--zsh" ]; then
	echo bootstrap zsh init
fi
