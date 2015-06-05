" ----------
" Vim Config
" ----------
"
"
" How this works:
"
" This file is minimal.  Most of the vim settings and initialization is in
" several files in .vim/init.  This makes it easier to find things and to
" merge between branches and repos.
"
" Please do not add configuration to this file, unless it *really* needs to
" come first or last, like Vundle and sourcing the machine-local config.
" Instead, add it to one of the files in .vim/init, or create a new one.

set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"
" Colorschemes
"
Plugin 'tpope/vim-vividchalk'
Plugin 'chriskempson/base16-vim'
Plugin 'molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'wgibbs/vim-irblack'
Plugin 'chriskempson/vim-tomorrow-theme'
Plugin 'candycode.vim'
Plugin 'Color-Sampler-Pack'
Plugin 'flazz/vim-colorschemes'

"
" Rails
"
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-endwise'
Plugin 'nelstrom/vim-textobj-rubyblock'
Plugin 'jgdavey/vim-blockle'

"
" General Editing
"
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
"
" Window Management
"
"Plugin 'ZoomWin'

"
" Searching
"
Plugin 'mileszs/ack.vim'
Plugin 'kien/ctrlp.vim'

"
" Navigation
"
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'

"
" Languages
"
Plugin 'vim-ruby/vim-ruby'
Plugin 'pangloss/vim-javascript'
Plugin 'plasticboy/vim-markdown'
Plugin 'nono/vim-handlebars'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'chrisbra/csv.vim'
Plugin 'elzr/vim-json'

"
" Development Tool Integration
"
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

call vundle#end()
filetype plugin indent on

syntax on

au BufRead,BufNewFile *.hamlc set ft=haml
colorscheme Tomorrow-Night
let mapleader = ','
map <C-n> :NERDTreeToggle<CR>
set number
set laststatus=2
set history=1000
set noswapfile
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

nnoremap <Leader>rtw :%s/\s\+$//e<CR>

autocmd BufWritePre * :%s/\s\+$//e
