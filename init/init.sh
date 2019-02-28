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

if [ -n "$ZSH_VERSION" ]
then
    if [[ -o login ]] && [ -f "$HOME/.local/etc/zshrc.zsh" ]
    then
        source $HOME/.local/etc/zshrc.zsh
    fi
elif [ -n "$BASH_VERSION" ]
then
    if shopt -q login_shell && [ -f "$HOME/.local/etc/bashrc.bash" ]
    then
        source $HOME/.local/etc/bashrc.bash
    fi
fi
