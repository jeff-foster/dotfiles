filetype plugin indent on
syntax enable

"colorscheme solarized-dark

set encoding=utf-8
set number " line numbers
set expandtab " Make tabs into spaces set by tabstop
set tabstop=3 " default tabstop
set shiftwidth=2
set softtabstop=2
set noerrorbells " no noise
set novisualbell " no blinking
set noshowmode "dont show current mode
set laststatus=2 " always show status line
set vb t_vb= " disable any beeps or flashes on error
set showcmd " display an incomplete command in the lower right corner of the vim window
set incsearch " search as you type
set hlsearch " search highlight
set foldmethod=manual " code folding
set t_Co=256 " Explicitly tell vim that the terminal supports 256 colors
set background=dark
set backspace=indent,eol,start
set relativenumber

set swapfile
set dir=~/.tmp

"show trailing whitespace as error
match ErrorMsg '\s\+$'

" denotes whether bufferline should automatically echo to the command bar
let g:bufferline_echo = 0
let g:bufferline_modified = ' + '
let g:bufferline_solo_highlight = 0

" airline/powerline/tmuxline
" don't inherit tmuxline theme from vim airline
" let g:airline#extensions#tmuxline#enabled = 0

" preset is layout
" let g:tmuxline_preset = 'nightly_fox'
"
" theme is colors/decoration
let g:airline_theme='wombat'
let g:tmuxline_theme = 'simple'
let g:tmuxline_preset = {
    \'a'    : '#S',
    \'b'    : '#W',
    \'c'    : '',
    \'win'  : '#I #W',
    \'cwin' : '#I #W',
    \'x'    : '#{client_termname}',
    \'y'    : '%k:%M',
    \'z'    : '#h'}

let g:airline#extensions#tabline#switch_buffers_and_tabs = 1

" for vim jsx
let g:jsx_ext_required = 0

"nerdtree
map <C-n> :NERDTreeToggle<CR>
