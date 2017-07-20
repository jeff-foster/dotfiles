call pathogen#infect()
filetype off " Pathogen needs to run before plugin indent on
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
syntax enable

colorscheme vividchalk

set number " line numbers
set expandtab " Make tabs into spaces set by tabstop
set tabstop=2 " default tabstop
set shiftwidth=2
set softtabstop=2
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
set backspace=indent,eol,start 
" set relativenumber

"show trailing whitespace as error
match ErrorMsg '\s\+$'
