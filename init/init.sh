[[ $- != *i* ]] && return

if [ -z $_INIT_SH_LOADED ]
then
    _INIT_SH_LOADED=1
else
    return
fi

export EDITOR=/usr/bin/vim

case "$TERM" in
    xterm)
        export TERM="xterm-256color"
        ;;
esac

if [ -d "$HOME/.local/bin" ]
then
    export PATH=$HOME/.local/bin:$PATH
fi

if [ -n "$ZSH_VERSION" ]
then

    if [ -f "$HOME/.local/etc/zshrc.zsh" ]
    then
        source $HOME/.local/etc/zshrc.zsh
    fi
    if [[ -o login ]]
    then
    fi
elif [ -n "$BASH_VERSION" ]
then
    if [ -f "$HOME/.local/etc/bashrc.bash" ]
    then
        source $HOME/.local/etc/bashrc.bash
    fi
    if shopt -q login_shell
    then
    fi
fi
