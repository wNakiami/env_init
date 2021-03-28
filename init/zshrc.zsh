# exit for non-interactive shell
[[ $- != *i* ]] && return

# WSL (aka Bash for Windows) doesn't work well with BG_NICE
[ -d "/mnt/c" ] && [[ "$(uname -a)" == *Microsoft* ]] && unsetopt BG_NICE

# compatible with Bash
export HOSTNAME=$HOST

if [[ -n $(command -v exa) ]]; then
    DISABLE_LS_COLORS=true
    alias ls=exa
fi

###########################
# zinit config
###########################

source ~/workspace/github/zinit/zinit.zsh

zinit snippet OMZL::key-bindings.zsh
zinit snippet OMZL::completion.zsh
zinit snippet OMZL::theme-and-appearance.zsh
zinit snippet OMZL::history.zsh
zinit snippet OMZL::git.zsh
zinit snippet OMZL::clipboard.zsh

zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::timer

zinit snippet OMZP::command-not-found
zinit snippet OMZP::colored-man-pages

zinit light skywind3000/z.lua
export _ZL_ADD_ONCE=1
export _ZL_MATCH_MODE=1

zinit light Aloxaf/fzf-tab
zinit light zdharma/fast-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions

zinit ice depth=1
zinit light romkatv/powerlevel10k

autoload -Uz compinit
compinit -i
zinit cdreplay -q
