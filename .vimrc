"Plug in stuff
call plug#begin('~/.vim/plugged')

Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" javascript related
Plug 'mattn/emmet-vim'
let g:ale_completion_enabled = 1
Plug 'dense-analysis/ale'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'jelera/vim-javascript-syntax'
let g:jsx_ext_required = 0
call plug#end()

"Basic things
set incsearch
set ignorecase
set smartcase
set autoindent
set backspace=indent,eol,start
set hidden
set ruler
set wildmenu
set noequalalways
set number

" for html files, 2 spaces
autocmd Filetype html,javascript setlocal ts=2 sw=2
"Theme
syntax enable

" NERDTree config
autocmd VimEnter * NERDTree
map <C-n> :NERDTreeToggle<CR>

let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['prettier', 'eslint'],
\}

" Trigger configuration for utlisnips. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

let g:user_emmet_leader_key='<C-Z>'
