call has('python3')
set nocompatible              " be iMproved, required
filetype off                  " required
set shell=/bin/bash

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

    Plugin 'VundleVim/Vundle.vim'
    Plugin 'ctrlpvim/ctrlp.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'flazz/vim-colorschemes'
    Plugin 'scrooloose/nerdtree'
    Plugin 'tomtom/tcomment_vim'
    Plugin 'shougo/neocomplete.vim'
    Plugin 'airblade/vim-gitgutter'
    Plugin 'nvie/vim-flake8'

call vundle#end()             " required
filetype plugin indent on     " required

" style
syntax on                     " highlight syntax
set fenc=utf-8                " utf-8 encode
set nobackup                  " not make backup file
set noswapfile                " not make swap file
set autoread                  " automatic read file when edited
set hidden                    " anable to open file even buffer is editing
set showcmd                   " show status of input command
set number                    " show line number
set cursorline                " show cursor
set title                     " show title
set virtualedit=onemore       " move cursor to next position of last of line
set smartindent               
set visualbell                " beep sound
set showmatch                 " show pair parenthess
set laststatus=2              " always show status line
set wildmode=list:longest     " complete command line
set ruler                     " show cursor line number
set wildmenu                  " complete command
set history=5000              " 5000 history of command
nnoremap j gj                 
nnoremap k gk
syntax enable 
colorscheme codedark

" tab
set list listchars=tab:\▸\-
set expandtab
set tabstop=4
set shiftwidth=4

" search
set ignorecase
set smartcase
set incsearch
set wrapscan
set hlsearch
nmap <Esc><Esc> :nohlsearch<CR><Esc>
nmap <silent><C-n> :NERDTreeFocus<CR>

" ignore all file in .gitignore
let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']

" automatic close parenthess
imap { {}<LEFT>
imap [ []<LEFT>
imap ( ()<LEFT>

" back cursor to postion of lastime opening
if has("autocmd")
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
endif
