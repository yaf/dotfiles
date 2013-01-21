set nocompatible
filetype off " required by Vundle plumbing

" Vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
so ~/.vim/bundle.vim

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

set scrolloff=3     " keep 3 lines when scrolling
set hlsearch        " highlight searches
set ruler           " show the cursor position all the time
set novisualbell    " turn off visual bell
set number          " show line numbers
set ignorecase      " ignore case when searching
set title           " show title in console title bar
set ttyfast         " smoother changes
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines

set showmatch

set encoding=utf-8

syntax on
set term=xterm-256color
set background=dark
colorscheme desert256
set guifont=Inconsolata:h20

set backspace=2
set laststatus=2
set backupdir=/tmp

if has('statusline')
  set statusline=%<%f\
  set statusline+=%w%h%m%r
  set statusline+=\ [%{&ff}/%Y]
  set statusline+=\ [%{getcwd()}]
  set statusline+=%=%-14.(Line:\ %l\ of\ %L\ [%p%%]\ -\ Col:\ %c%V%)
endif

map <up> <ESC>:bp<RETURN>
map <down> <ESC>:bn<RETURN>
map <left> <ESC>:buffer<SPACE>
map <right> <ESC>:ls<RETURN>

set switchbuf=newtab

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

autocmd CursorHold * update
set updatetime=20

autocmd BufWritePre * :%s/\s\+$//e

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript

set backupdir=~/.vim/backup
set directory=~/.vim/backup

