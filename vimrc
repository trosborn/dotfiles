set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'bling/vim-airline'

" play nice with iterm2
Bundle 'sjl/vitality.vim'

" Git stuff
Bundle 'tpope/vim-fugitive'
Bundle 'airblade/vim-gitgutter'

" Automatic end statements
Bundle 'tpope/vim-endwise'

" Syntax error reporter
Bundle "scrooloose/syntastic"

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set autowrite     " Automatically :write before running commands
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

set nobackup
set nowritebackup
set noswapfile

set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set backspace=2   " Backspace deletes like most programs in insert mode

" Theme stuff
set background=dark
let g:hybrid_custom_term_colors = 1
silent! colorscheme hybrid
syntax on

" Remove all whitespace on the end of lines on write
autocmd BufWritePre *.* :%s/\s\+$//e

" Display that extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Key to insert mode with paste
map <Leader>i :set paste<CR>i
" Leave paste mode on exit
au InsertLeave * set nopaste

" Pretty print json
map <Leader>f :%!python -m json.tool<CR>

set noswapfile

