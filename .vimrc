imap jt <Esc>

nnoremap <SPACE> <Nop>
let mapleader = "\<space>"
let maplocalleader = "-"

filetype plugin indent on
set nocompatible
syntax on
set number
set ruler
set visualbell
set ignorecase
set smartcase
set shiftwidth=4 smarttab
set expandtab
set smartcase

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
Plug 'jiangmiao/auto-pairs'
Plug 'lervag/vimtex'
Plug 'SirVer/ultisnips'
Plug 'altercation/vim-colors-solarized'
Plug 'ntpeters/vim-better-whitespace'
Plug 'vim-scripts/indentpython.vim'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdtree'
call plug#end()

" vimtex
let g:vimtex_view_method ='zathura'
let g:vimtex_quickfix_ignore_filters = ['Underfull', 'Overfull']
"let g:vimtex_view_forward_search_on_start=0

" ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsListSnippets="<c-tab>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetsDir = $HOME.'/.vim/UltiSnips'

set background=light
" colorscheme solarized
hi SpellBad cterm=underline

" PEP8 indents
au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-h> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
