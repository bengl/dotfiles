" @bengl's vimrc
" ==============

" BEGIN setup

silent !mkdir -p ~/.vim/bundle > /dev/null 2>&1

if !isdirectory($HOME.'/.vim/bundle/vundle')
  silent !git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle
endif

" END setup


" auto update
"silent !curl -s -L http://bit.ly/benglvimrc > ~/.vimrc

" don't need vi compatibility mode
set nocompatible


""
"" Vundle
""

" initialize
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" bundles
Bundle 'scrooloose/nerdtree'
Bundle 'rson/vim-conque'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-afterimage'
Bundle 'tpope/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'anzaika/go.vim'
Bundle 'tpope/vim-endwise'
Bundle 'mutewinter/ir_black_mod'
Bundle 'godlygeek/csapprox'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Rykka/colorv.vim'
Bundle 'mutewinter/vim-indent-guides'
Bundle 'majutsushi/tagbar'
Bundle 'kien/ctrlp.vim'
Bundle 'mileszs/ack.vim'
Bundle 'dbext.vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Conque-Shell'
Bundle 'msanders/snipmate.vim'
Bundle 'SirVer/ultisnips'
Bundle 'terryma/vim-multiple-cursors'



""
"" Settings
""

" plugins, indents, syntax, filetypes
filetype plugin indent on
syntax on

" run BundleInstall if first time
if !isdirectory($HOME.'/.vim/bundle/nerdtree') " use a bundle i'll probably never get rid of
  BundleInstall
  q
endif

" cool ASCII arrows in NERDTree
let NERDTreeDirArrows=1

" tabs that make sense (and are 2 spaces)
set tabstop=2
set shiftwidth=2
set smartindent
set expandtab

" line numbers
set number

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
let g:indent_guides_start_level=2

" allow modelines
set modeline
set modelines=3

" use system clipboard
set clipboard=unnamed

" epic vim command completion
set wildmenu

" persistent undo
set undofile
set undodir=$HOME/.vim/undo
set undolevels=1000
set undoreload=10000

" 80 char limit
set colorcolumn=81
hi ColorColumn ctermbg=DarkGray guibg=DarkGray

" CtrlP options
set wildignore+=.git/*
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

" enable neocomplcache
let g:neocomplcache_enable_at_startup = 1



""
"" Mappings
""

let g:ctrlp_map = '<Leader>p'
nmap <silent> <Leader>pp :CtrlPTag<CR>
nmap <silent> <C-D> :NERDTreeToggle<CR>
nmap <silent> <Leader>t :TagbarToggle<CR>
nmap <silent> <Leader>b :ConqueTermTab bash<CR>
nmap <silent> ~ :tabnext<CR>
nmap <silent> ~~ :tabnew<CR>



""
"" GUI-only settings
""

" gvim/macvim stuff
if has("gui_running")
  set guifont=Menlo\ Regular:h14 "this is actually Menlo with Powerline patch
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
  macmenu &File.New\ Tab key=<nop>
endif
