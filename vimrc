scriptencoding utf-8
set encoding=utf-8

execute pathogen#infect()

set nocompatible
filetype off

set showmode
set showcmd
set shiftwidth=2
set shiftround
set expandtab
set autoindent
filetype plugin indent on
set ignorecase
set smartcase
set incsearch
set gdefault

set scrolloff=3
set hlsearch
set ruler
set visualbell
set number
set ignorecase
set title
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
set laststatus=2
set backupdir=/tmp

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

map <up> <ESC>:bprevious<RETURN>
map <down> <ESC>:bnext<RETURN>
map <left> <ESC>:buffer<SPACE>
map <right> <ESC>:buffers<RETURN>

imap <up> <ESC>:bprevious<RETURN>
imap <down> <ESC>:bnext<RETURN>
imap <left> <ESC>:buffer<SPACE>
imap <right> <ESC>:buffers<RETURN>

set switchbuf=newtab

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript
au BufRead /tmp/mutt-* set tw=72

set backupdir=~/.vim/backup
set directory=~/.vim/backup

