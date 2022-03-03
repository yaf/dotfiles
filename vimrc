scriptencoding utf-8
set encoding=utf-8

set nocompatible
set autoindent
filetype plugin indent on

set showmode
set showcmd

set nu
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set shiftround
set ignorecase
set smartcase
set incsearch
set gdefault

set scrolloff=7
set hlsearch
set ttyfast
set modeline
set modelines=3

set vb t_vb=

set visualbell

set hidden
set history=100

set showmatch

set list
set listchars=trail:•,tab:→\ ,nbsp:¬

syntax enable
set term=xterm-256color
set background=light
"set guifont=Inconsolata:h20

set backspace=2

set path=**
set wildmenu

let g:html_indent_tags = 'li\|p'

set statusline=%F%m%r%<\ %=%l,%v\ [%L]\ %p%%
"hi statusline ctermbg=white ctermfg=black
set laststatus=2

set splitbelow
set splitright

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

set nobackup
set nowb
set noswapfile

set spelllang+=fr
autocmd BufEnter *.txt set spell
autocmd BufEnter *.md set spell
autocmd FileType gitcommit setlocal spell

command! MakeTags !ctags -R .

vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

packadd! matchit
