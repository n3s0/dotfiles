set nocompatible

set backspace=2

set number
set ruler
set laststatus=2

set foldmethod=indent
set foldnestmax=3

call plug#begin('~/.vim/plugged')
	Plug 'tomasr/molokai'
	Plug 'jwalton512/vim-blade'
call plug#end()

filetype on
syntax on

filetype plugin indent on

set spell

colorscheme molokai

set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set autoindent

set encoding=utf-8

set hlsearch
set ignorecase

au BufNewFile,BufRead *.txt set filetype=txt

augroup auFileTypes
	autocmd!
	autocmd FileType markdown setlocal textwidth=72
  autocmd FileType txt setlocal textwidth=72
augroup end

autocmd filetype go setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd filetype php setlocal shiftwidth=4 softtabstop=4 expandtab

