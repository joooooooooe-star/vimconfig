set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'Valloric/YouCompleteMe'
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scroolooose/nerdtree'

let python_highlight_all = 1
syntax on

set nu
set clipboard=unnamed
set encoding=utf-8
au BufRead,BufNewFile *.py, *.pyw, *.c, *.h match BadWhitespace /\s\+$/
au BufNewFile,BufRead *.py
	\ set tabstop=4
	\ set softtabstop=4
	\ set shiftwidth=4
	\ set textwidth=79
	\ set expandtab
	\ set autoindent
	\ set fileformat=unix

call vundle#end()
filetype plugin indent on
