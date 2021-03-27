# exit for non-interactive shell
[[ $- != *i* ]] && return

# WSL (aka Bash for Windows) doesn't work well with BG_NICE
[ -d "/mnt/c" ] && [[ "$(uname -a)" == *Microsoft* ]] && unsetopt BG_NICE

# compatible with Bash
export HOSTNAME=$HOST

source ~/workspace/github/zinit/zinit.zsh

zinit snippet OMZ::lib/history.zsh
zinit snippet OMZ::lib/git.zsh

zinit ice lucid wait='0'
zinit snippet OMZ::plugins/git/git.plugin.zsh

zinit ice lucid wait='0'
zinit light skywind3000/z.lua
export _ZL_ADD_ONCE=1
export _ZL_MATCH_MODE=1

zinit ice lucid wait='0'
zinit light zdharma/fast-syntax-highlighting

zinit ice lucid wait='0' atload='_zsh_autosuggest_start'
zinit light zsh-users/zsh-autosuggestions

zinit ice depth=1
zinit light romkatv/powerlevel10k
