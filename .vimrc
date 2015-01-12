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
" set relativenumber

" Colors
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
syntax enable
set background=dark
colorscheme solarized-black

" Bundle starts here
set nocompatible               " be iMproved
filetype off                   " required!

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

execute pathogen#infect()
" use .scss syntax highlighting in .vim/syntax/ directory

au BufRead,BufNewFile *.scss set filetype=scss
