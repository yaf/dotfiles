set nocompatible
filetype off " required by Vundle plumbing

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
set cursorline

set scrolloff=3     " keep 3 lines when scrolling
set hlsearch        " highlight searches
set ruler           " show the cursor position all the time
set visualbell    " turn off visual bell
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

map <up> <ESC>:bp<RETURN>
map <down> <ESC>:bn<RETURN>
map <left> <ESC>:bdelete<RETURN>
map <right> <ESC>:buffers<RETURN>

set switchbuf=newtab

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

"autocmd BufWritePre * :%s/\s\+$//e

nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-h> <C-W>h
nnoremap <C-l> <C-W>l

au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru} set ft=ruby
au BufNewFile,BufRead *.json set ft=javascript
au BufRead /tmp/mutt-* set tw=72

au BufRead,BufNewFile *.md setlocal textwidth=80
au BufRead,BufNewFile *.tex setlocal textwidth=80

set backupdir=~/.vim/backup
set directory=~/.vim/backup

augroup filetypedetect
  " Mail
  autocmd BufRead,BufNewFile *mutt-*              setfiletype mail
augroup END

