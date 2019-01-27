set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'Vim-Latex/vim-latex'
Plugin 'Valloric/YouCompleteMe'
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

func! WordProcessor()
	" movement changes
	map j gj
	map k gk
	setlocal formatoptions=1
	setlocal noexpandtab
	setlocal wrap
	setlocal linebreak

	" spelling and thesaurus
	
	setlocal spell spelllang=en_us
	set complete+=s
endfu

com! WP call WordProcessor()
