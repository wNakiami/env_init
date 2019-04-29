if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    source ~/.vimrc
endif

" 指定插件目录
call plug#begin('~/.vim/plugged')

Plug 'crusoexia/vim-monokai', {'do': 'cp -rf ./colors ./../../'}

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

Plug 'scrooloose/nerdcommenter'
Plug 'easymotion/vim-easymotion'
Plug 'Raimondi/delimitMate'

call plug#end()
