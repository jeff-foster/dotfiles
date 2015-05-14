call pathogen#infect()
filetype off " Pathogen needs to run before plugin indent on
call pathogen#helptags() " generate helptags for everything in 'runtimepath'
filetype plugin indent on
syntax enable

colorscheme vividchalk

set number " line numbers
set expandtab " Make tabs into spaces set by tabstop
set tabstop=4 " default tabstop
set shiftwidth=4
set softtabstop=4
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

" use .scss syntax highlighting in .vim/syntax/ directory
au BufRead,BufNewFile *.scss set filetype=scss
"syntastic stuff https://github.com/scrooloose/syntastic#installpathogen
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
"let g:syntastic_javascript_checkers = ['jscs']

"nerdtree
autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

