set nocompatible
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'w0ng/vim-hybrid'
Plug 'Raimondi/delimitMate'

Plug 'bling/vim-airline'

Plug 'sjl/vitality.vim'

Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

Plug 'tpope/vim-endwise'
Plug 'scrooloose/syntastic'
Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'tpope/vim-vinegar'

call plug#end()

set autowrite     " Automatically :write before running commands
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set smartindent

"Cursos which always stays in middle of screen
set scrolloff=9999 

set nobackup
set nowritebackup
set noswapfile

set incsearch     " do incremental searching
set laststatus=2  " Always display the status line
set backspace=2   " Backspace deletes like most programs in insert mode

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exe = 'npm run lint --'

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

