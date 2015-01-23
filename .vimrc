" Pathogen
filetype off " Pathogen needs to run before plugin indent on
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
call pathogen#infect()
filetype plugin indent on

syntax on
colorscheme vividchalk 

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
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set background=dark
" set relativenumber

" use .scss syntax highlighting in .vim/syntax/ directory
au BufRead,BufNewFile *.scss set filetype=scss
