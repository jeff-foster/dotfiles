set number " line numbers
set expandtab " Make tabs into spaces set by tabstop
set tabstop=4 " default tabstop
set noerrorbells " no noise
set novisualbell " no blinking
set laststatus=2 " always show status line
set vb t_vb= " disable any beeps or flashes on error
set showcmd " display an incomplete command in the lower right corner of the vim window
set incsearch " search as you type
set hlsearch " search highlight
set foldmethod=manual " code folding
set relativenumber

" Colors
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
syntax enable
set background=dark
colorscheme solarized

" Bundle starts here
set nocompatible               " be iMproved
filetype off                   " required!

" Vundle required stuff, don't mess with
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" original repos on github
Bundle 'pangloss/vim-javascript'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-haml'
Bundle 'mattn/zencoding-vim'
Bundle 'cakebaker/scss-syntax.vim.git'

" use Zencoding for other languages, not just .html files.
let g:user_zen_settings = {
  \  'php' : {
  \    'extends' : 'html',
  \    'filters' : 'c',
  \  },
  \  'jsp' : {
  \    'extends' : 'html',
  \  },
  \  'xml' : {
  \    'extends' : 'html',
  \  },
  \  'haml' : {
  \    'extends' : 'html',
  \  },
  \}

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
"
" see :h vundle for more details or wiki for FAQ
"

" use .scss syntax highlighting in .vim/syntax/ directory
au BufRead,BufNewFile *.scss set filetype=scss
