set nocompatible

set autoread
set noswapfile

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

set number
set so=7

set background=dark
set t_Co=256
syntax on
colorscheme monokai

set encoding=utf-8

command W w !sudo tee % > /dev/null

if !empty(glob('~/.vim/plugin.vim'))
    source ~/.vim/plugin.vim
endif
