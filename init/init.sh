[[ $- != *i* ]] && return

if [ -z $_INIT_SH_LOADED ]
then
    _INIT_SH_LOADED=1
else
    return
fi

export EDITOR=vim
export TERM="xterm-256color"

if [ -d "$HOME/.local/bin" ]
then
    export PATH=$HOME/.local/bin:$PATH
fi
