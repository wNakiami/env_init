#! /usr/bin/env bash

if [[ -n $(command -v git) ]]; then
    git config --global pager.status false
    git config --global pager.branch false
    git config --global pager.stash false
    git config --global pager.config false

    git config --global icdiff.options '--line-numbers'

    git config --global credential.helper store

    git config --global user.name 'wNakiami'
    git config --global user.email 'wjl8927962@vip.qq.com'
fi

if [[ -n $(command -v v2ray) ]]; then
    git config --global http.http://github.com.proxy socks5://127.0.0.1:1080
    git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
fi
