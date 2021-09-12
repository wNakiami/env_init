#! /usr/bin/env bash

if [[ -n $(command -v git) ]]; then
    git config --global pager.status false
    git config --global pager.branch false
    git config --global pager.stash false
    git config --global pager.config false

    git config --global icdiff.options '--line-numbers'

    #git config --global pull.rebase true

    #git config --global credential.helper store
    #git config --global diff.algorithm histogram

    # account of Github
    git config --global user.name 'wNakiami'
    git config --global user.email 'wjl8927962@vip.qq.com'
fi

if [[ -n $(command -v v2ray) ]]; then
    git config --global http.http://github.com.proxy http://127.0.0.1:5001
    git config --global http.https://github.com.proxy http://127.0.0.1:5001
fi
