set shell=bash

set nocompatible
filetype on
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
" Plugin 'bling/vim-airline'
Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'scrooloose/nerdtree'

call vundle#end()
filetype plugin indent on

" global settings
set fileencodings=utf-8,big5,gbk,latin1
set shiftwidth=4
set tabstop=4
set ai
syntax on
set backspace=indent,eol,start

" vim-airline
" set laststatus=2
" let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

" powerline
set laststatus=2
