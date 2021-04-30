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
if !exists('g:undotree_WindowLayout')
    let g:undotree_WindowLayout = 2
endif

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
let NERDToggleCheckAllLines = 1
let NERDDefaultAlign = 'left'

Plug 'easymotion/vim-easymotion'
map <leader>s <Plug>(easymotion-s)

Plug 'Raimondi/delimitMate'
"Plug 'jiangmiao/auto-pairs'

Plug 'majutsushi/tagbar'
nnoremap <leader>tb :TagbarToggle<cr>

if version > 743
    "Plug 'Yggdroot/LeaderF'
    "nnoremap <C-p> :Leaderf file<cr>
    "nnoremap <leader>f :LeaderfFunction<cr>
    "nnoremap <leader>u :LeaderfFunctionCword<cr>
    "let g:Lf_PreviewResult = { 'Function' : 0 }
    "let g:Lf_UseVersionControlTool = 0
endif

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
nnoremap <C-p> :FZF<cr>
nnoremap <leader>f :BTags<cr>
nnoremap <leader>u :BTags <c-r><c-w><cr>
let g:fzf_layout = {'down': '40%'}

"Plug 'Valloric/YouCompleteMe'
"let g:ycm_server_python_interpreter = '/usr/bin/python'
"let g:ycm_global_ycm_extra_conf = '~/.vim/plugged/YouCompleteMe/third_party/ycmd/.ycm_extra_conf.py'
"let g:ycm_add_preview_to_completeopt = 0
"let g:ycm_autoclose_preview_window_after_insertion = 1
"let g:ycm_confirm_extra_conf = 0
"let g:ycm_complete_in_comments = 1
"nnoremap <C-g> :YcmCompleter GoTo

"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

Plug 'dyng/ctrlsf.vim'
nnoremap <leader>cf :CtrlSF <c-r><c-w><cr>
nnoremap <leader>ct :CtrlSFToggle<cr>
let g:ctrlsf_position = 'bottom'

" these two plugin use for copy text form vim into tmux's clipboard
Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'roxma/vim-tmux-clipboard'

" syntax highlighting for skynet sproto 
"Plug 'spin6lock/vim_sproto'

"Plug 'rust-lang/rust.vim'

"Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'justinmk/vim-sneak'

if version >= 800
    "Plug 'ludovicchabant/vim-gutentags'
    "let g:gutentags_project_root = ['.git', '.svn', '.hg']
    "let g:gutentags_ctags_tagfile = '.tags'
    "let g:gutentags_modules = []
    "if executable('ctags')
        "let g:gutentags_modules += ['ctags']
    "endif
    "if executable('gtags-cscope') && executable('gtags')
        "let g:gutentags_modules += ['gtags_cscope']
    "endif
    "let s:vim_tags = expand('~/.local/tags_cache/tags')
    "let g:gutentags_cache_dir = s:vim_tags
    "if !isdirectory(s:vim_tags)
        "silent! call mkdir(s:vim_tags, 'p')
    "endif

    "Plug 'w0rp/ale'
    "let g:ale_lint_on_text_changed = 'normal'
    "let g:ale_lint_on_insert_leave = 1

    "Plug 'jackguo380/vim-lsp-cxx-highlight'
    "Plug 'neoclide/coc.nvim', {'branch': 'release'}
    "let g:coc_global_extensions = ['coc-json', 'coc-snippets', 'coc-explorer']
    "let g:coc_config_home = '~/.vim/etc'
    "autocmd FileType json syntax match Comment +\/\/.\+$+
    "inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
    "inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
    "nmap <leader>df <Plug>(coc-definition)
    "nmap <leader>dc <Plug>(coc-declaration)
    "nmap <leader>im <Plug>(coc-implementation)
    "nmap <leader>re <Plug>(coc-references)
    "nmap <leader>rf <Plug>(coc-refactor)
    "nmap <leader>e :CocCommand explorer<CR>
    " gopls for go language server
    "autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

    Plug 'skywind3000/asynctasks.vim'
    Plug 'skywind3000/asyncrun.vim'
    let g:asyncrun_open = 6
endif

call plug#end()
