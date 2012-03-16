" auto update
silent !curl -s -L http://bit.ly/benglvimrc > ~/.vimrc

" don't need vi compatibility mode
set nocompatible

" vundle stuff
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" vundle bundles
Bundle 'scrooloose/nerdtree'
Bundle 'rson/vim-conque'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-afterimage'
Bundle 'kchmck/vim-coffee-script'
Bundle 'anzaika/go.vim'
Bundle 'tpope/vim-endwise'
Bundle 'mutewinter/ir_black_mod'
Bundle 'godlygeek/csapprox'
Bundle 'wincent/Command-T'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Rykka/ColorV'
Bundle 'mutewinter/vim-indent-guides'

" plugins, indents, syntax, filetypes
filetype plugin indent on
syntax on

" Control D to toggle NERDTree
nmap <silent> <C-D> :NERDTreeToggle<CR>

" cool ASCII arrows in NERDTree
let NERDTreeDirArrows=1

" tabs that make sense (and are 2 spaces)
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab

" line numbers
set number

" syntax completion with Alt/Option-Space
set ofu=syntaxcomplete#Complete
imap <M-Space> <C-X><C-O>

" use mouse even in terminal
set mouse=a

" folding stuff (i rarely use this)
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

" super sexy searching
set incsearch
set hlsearch

" make backspace work like a friggin backspace in insert mode
set backspace=indent,eol,start

" best color scheme ever?
colorscheme ir_black_mod

" always show the status line
set laststatus=2

" force 256 colors (needed for powerline)
set t_Co=256

" make powerline look sexy
let g:Powerline_symbols='fancy'

" indent guides aren't annoying
let g:indent_guides_guide_size=1

" allow modelines
set modeline
set modelines=3

" gui stuff
if has("gui_running")
  set guifont=Menlo-Powerline:h18
  set guioptions-=T
  set guioptions-=r
  set guioptions-=R
  set guioptions-=l
  set guioptions-=L
  set fuoptions=maxvert,maxhorz
  set background=dark
endif

" macvim stuff
if has("gui_macvim")
  map <D-t> :CommandT<CR>
  macmenu &File.New\ Tab key=<nop>
endif
