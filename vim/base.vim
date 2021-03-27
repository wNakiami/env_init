set nocompatible

" 在文件变化时自动读取新文件
set autoread

let mapleader = ","
let g:mapleader = ","

nmap <leader>w :w!<cr>

set mouse=a

set updatetime=200

set number

set so=7

set background=dark
set t_Co=256
syntax on
colorscheme monokai

set encoding=utf-8

" 以sudo权限保存文件
command W w !sudo tee % > /dev/null

" 打开命令可补全内容预览
set wildmenu

" 忽略文件设置
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif

" 打开状态栏
set ruler

set cmdheight=2

" 隐藏被丢弃的buffer
set hid

" set not show mode at bottom
set noshowmode

set ignorecase

set smartcase
set incsearch

set hlsearch

set noswapfile

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Don't redraw while executing macros (good performance config)
"set lazyredraw

" 用空格代替tabs
set expandtab
set smarttab
set shiftwidth=4
set tabstop=4
set autoindent

map <silent> <leader><cr> :noh<cr>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>bd :bd<cr>

map <C-n> :bprevious<cr>
map <C-m> :bnext<cr>

" 显示状态栏
set laststatus=2

" When you press <leader>r you can search and replace the selected text
"vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
func Cmdline(str)
    exe "menu Foo.Bar :" . a:str
    emenu Foo.Bar
    unmenu Foo
endfunc
func VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", '\\/.*$^~[]')
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call Cmdline("Ag \"" . l:pattern . "\" " )
    elseif a:direction == 'replace'
        call Cmdline("%s", '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunc
