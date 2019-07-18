if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    source ~/.vimrc
endif

" 指定插件目录
call plug#begin('~/.vim/plugged')


Plug 'junegunn/vim-easy-align'
noremap <leader>a :EasyAlign<cr>

Plug 'mbbill/undotree'
nnoremap <F5> :UndotreeToggle<cr>

Plug 'mhinz/vim-signify'

Plug 'crusoexia/vim-monokai', {'do': 'cp -rf ./colors ./../../'}

Plug 'vim-airline/vim-airline'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

Plug 'scrooloose/nerdtree'
let NERDTreeWinPos='right'
noremap <leader>t :NERDTree<cr>
noremap <leader>tt :NERDTreeClose<cr>

Plug 'scrooloose/nerdcommenter'

Plug 'easymotion/vim-easymotion'

Plug 'Raimondi/delimitMate'

Plug 'majutsushi/tagbar'
nnoremap <leader>tb :TagbarToggle<cr>

"Plug 'Yggdroot/LeaderF'
"nnoremap <leader>f :LeaderfFunction<cr>
"nnoremap <leader>u :LeaderfFunctionCword<cr>
"let g:Lf_PreviewResult = {
            "\ 'File' : 0,
            "\ 'Buffer' : 0,
            "\ 'Mru' : 0,
            "\ 'Tag' : 0,
            "\ 'BufTag' : 1,
            "\ 'Function' : 0,
            "\ 'Line' : 0,
            "\ 'Colorscheme' : 0
            "\ }

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :FZF<cr>
nnoremap <leader>f :BTags<cr>
nnoremap <leader>u :BTags <c-r><c-w><cr>

"Plug 'Valloric/YouCompleteMe'
"let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_key_list_select_completion = ['<Down>']
"nnoremap <C-g> :YcmCompleter GoTo

"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'dyng/ctrlsf.vim'
nnoremap <leader>sf :CtrlSF <c-r><c-w><cr>
nnoremap <leader>st :CtrlSFToggle<cr>

" these two plugin use for copy text form vim into tmux's clipboard
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'

if version >= 800
    Plug 'ludovicchabant/vim-gutentags'
    let g:gutentags_project_root = ['.git']
    let g:gutentags_ctags_tagfile = '.tags'
    let s:vim_tags = expand('~/.local/tags_cache/tags')
    let g:gutentags_cache_dir = s:vim_tags
    if !isdirectory(s:vim_tags)
        silent! call mkdir(s:vim_tags, 'p')
    endif

    Plug 'w0rp/ale'
    let g:ale_lint_on_text_changed = 'normal'
    let g:ale_lint_on_insert_leave = 1
    let g:ale_fixers = {
    \   'lua': ['luacheck'],
    \   'python': ['flake8'],
    \}
    let g:ale_python_flake8_options = '--ignore=E221,E302,E305,E201,E501,E128'
endif

call plug#end()
