set nocompatible              " be iMproved
filetype off                  " required!

set hidden
set nowrap          " dont wrap lines
set tabstop=4       " a tab is four spaces
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab
set backspace=indent,eol,start
set autoindent
set copyindent
set shiftwidth=4
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch

set history=1000
set undolevels=1000
set wildignore=*.swp,*.bak,*.pyc,*.class
set title
set visualbell
set noerrorbells



set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" =========================
" My bundles:
" =========================
Plugin 'tpope/vim-fugitive'
Plugin 'L9'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'rstacruz/sparkup'
Plugin 'davidhalter/jedi-vim'
"Plugin 'tpope/surround'

" vim-scripts repos
Plugin 'FuzzyFinder'

" Color schemas
"Plugin 'tomasr/molokai'
"Plugin 'flazz/vim-colorchemes'
call vundle#end()

filetype plugin indent on     " required!
autocmd filetype python set expendtab
syntax on
" ====================================
" Help
" ====================================
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"

" mapping leader key
:let mapleader = ","

" ====================================
" Jedi-Vim config:
" ====================================
let g:jedi#goto_assignments_command = "<leader>g"
let g:jedi#goto_definitions_command = "<leader>d"
let g:jedi#documentation_command = "K"
let g:jedi#usages_command = "<leader>n"
let g:jedi#completions_command = "<C-Space>"
let g:jedi#rename_command = "<leader>r"
let g:jedi#show_call_signatures = "1"

" I dont want to docstring autocompletion window to popup
autocmd FileType python setlocal completeopt-=preview

" Support for vim explorer
let g:netrw_liststyle = 3
map <leader>k :Explore<cr>

