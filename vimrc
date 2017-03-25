scriptencoding utf-8
set encoding=utf-8

set nocompatible
set showmode
set showcmd

set expandtab
set tabstop=4
set softtabstop=4

set cursorline

set shiftwidth=2
set shiftround
set autoindent
filetype plugin indent on
set ignorecase
set smartcase
set incsearch
set gdefault

set scrolloff=7
set hlsearch
set ruler
set visualbell
set number
set ttyfast
set modeline
set modelines=3

set hidden
set history=100

set showmatch

set list
set listchars=trail:•,tab:→\ ,nbsp:¬

syntax enable
set term=xterm-256color
set background=light
set guifont=Inconsolata:h20

set backspace=2

if has('statusline')
  set statusline=%<%f\
  set statusline+=%w%h%m%r
  set statusline+=\ [%{&ff}/%Y]
  set statusline+=\ [%{getcwd()}]
  set statusline+=%=%-14.([%p%%]\ -\ Col:\ %c%V%)
endif

let g:html_indent_tags = 'li\|p'

set splitbelow
set splitright

map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

set nobackup
set nowb
set noswapfile
