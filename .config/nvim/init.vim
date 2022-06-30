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

Plug 'folke/tokyonight.nvim', { 'branch': 'main' }
Plug 'itchyny/lightline.vim'

call plug#end()

" Plugin settings
let g:tokyonight_style = "night"
let g:lightline = {'colorscheme': 'tokyonight'}

" Colorscheme settings
colorscheme tokyonight
