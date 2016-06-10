set nocompatible              " be iMproved, required
filetype off                  " required
set backspace=indent,eol,start

" color sanity
syntax on
set background=dark
color solarized

" tab sanity
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab

" random sanity
set nu
au BufRead,BufNewFile *.json set filetype=json
let g:vim_json_syntax_conceal = 0

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'elzr/vim-json'
Plugin 'flazz/vim-colorschemes'

call vundle#end()            " required
filetype plugin indent on    " required

" some syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" lang specific syntastic
let g:syntastic_JSON_checkers = ['jsonlint']
let g:syntastic_yaml_checkers= ['yamllint']
