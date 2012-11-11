" tirer parti des fonctions de vim 
" et se débarrasser de la compatibilité vi
set nocompatible

filetype on
filetype plugin on
filetype indent on

set hidden
set lazyredraw
set showmode
set background=dark
set backspace=indent,eol,start
set iskeyword+=_,$,@,%,#
set noerrorbells
set laststatus=2

" les tabulations sont des espaces, et font 2 espaces
set shiftwidth=2
set tabstop=2
set expandtab
set smarttab
set expandtab
set autoindent
set scrolloff=999
set encoding=UTF-8
set cpoptions+=$
set wildmenu
set cursorline
set cmdheight=2
set ruler
set ignorecase
set smartcase
set hlsearch

" ligne de status
au bufNewFile *.rb 0r ~/.vim/templates/ruby.rb

nnoremap <C-L> :nohl<CR><C-L>

" pour éditer vimrc ',ev' pour le sourcer ',sv'
nmap <silent> ,ev :e $MYVIMRC<cr>
nmap <silent> ,sv :so $MYVIMRC<cr>

" couleure xoria256 et coloration syntaxique
colorscheme xoria256
syntax on

call pathogen#infect()

runtime! autoload/pathogen.vim
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()

"abbréviations pour insérer ligne ruby
abbr rbenv #!/usr/bin/env ruby <CR><esc>

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTree== "primary") | q | endif

nnoremap <silent> ,nt :NERDTree<CR>
