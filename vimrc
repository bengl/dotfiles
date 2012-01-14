set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'scrooloose/nerdtree'
Bundle 'rson/vim-conque'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-afterimage'
Bundle 'altercation/vim-colors-solarized'
Bundle 'kchmck/vim-coffee-script'
Bundle 'anzaika/go.vim'
Bundle 'tpope/vim-endwise'
Bundle 'mutewinter/ir_black_mod'
Bundle 'godlygeek/csapprox'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'

filetype plugin indent on
syntax on

nmap <silent> <C-D> :NERDTreeToggle<CR>

set tabstop=2
set shiftwidth=2
set smartindent

set number
set ofu=syntaxcomplete#Complete
imap <M-Space> <C-X><C-O>
set mouse=a

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

let NERDTreeDirArrows=1

set incsearch
set hlsearch

set backspace=indent,eol,start

"let g:ConqueTerm_Color = 1
"let g:ConqueTerm_InsertOnEnter = 0

colorscheme ir_black_mod

set laststatus=2
set t_Co=256

let g:Powerline_symbols='fancy'

