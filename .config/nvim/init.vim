set number
set laststatus=2
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set autoindent
set background=dark
syntax on

" Plugin settings
call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'

call plug#end()

" Plugin settings
let g:lightline = {'colorscheme': 'gruvbox'}

" Colorscheme settings
colorscheme gruvbox
