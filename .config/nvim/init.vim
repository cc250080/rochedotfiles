" BASIC SETUP SECTION
set background=dark         " Adjust default colors for dark backgrounds
set nocompatible            " disable compatibility to old-time vi
set showmatch               " show matching 
set ignorecase              " case insensitive 
set mouse=v                 " middle-click paste with 
set hlsearch                " highlight search 
set incsearch               " incremental search
set tabstop=4               " number of columns occupied by a tab 
set softtabstop=4           " see multiple spaces as tabstops so <BS> does the right thing
set expandtab               " converts tabs to white space
set shiftwidth=4            " width for autoindents
set autoindent              " indent a new line the same amount as the line just typed
set number                  " add line numbers
" set relativenumber          " show relativenumber in line numbers
set wildmode=longest,list   " get bash-like tab completions
filetype plugin indent on   "allow auto-indenting depending on file type
syntax on                   " syntax highlighting
set mouse=a                 " enable mouse click
set clipboard=unnamedplus   " using system clipboard
filetype plugin indent on
set cursorline              " highlight current cursorline
set ttyfast                 " Speed up scrolling in Vim
set termguicolors
syntax enable

" VIM FOR YAML EDITING (2 lines indentation and Indentation guides(needs
" identLine plugin) 

autocmd FileType yaml setlocal ts=2 sts=2 sw=2 expandtab
let g:indentLine_char = '⦙'
set autoindent smartindent

" Colorscheme 
colorscheme default

" Use comments in Italic Font by default
highlight Comment cterm=italic gui=italic
