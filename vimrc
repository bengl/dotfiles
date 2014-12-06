" @bengl's vimrc
" ==============

" BEGIN setup

silent !mkdir -p ~/.vim/bundle > /dev/null 2>&1

if !isdirectory($HOME.'/.vim/bundle/neobundle.vim')
  silent !git clone https://github.com/Shougo/neobundle.vim.git ~/.vim/bundle/neobundle.vim
endif

" END setup


" auto update
"silent !curl -s -L http://bit.ly/benglvimrc > ~/.vimrc

" start NeoBundle
if has('vim_starting')
  set nocompatible               " Be iMproved
  set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#rc(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'Shougo/vimproc', {
      \ 'build' : {
      \     'windows' : 'make -f make_mingw32.mak',
      \     'cygwin' : 'make -f make_cygwin.mak',
      \     'mac' : 'make -f make_mac.mak',
      \     'unix' : 'make -f make_unix.mak',
      \    },
      \ }
NeoBundle 'Shougo/vimshell'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'bling/vim-airline'
NeoBundle 'alexdavid/nerdtree_icons'
NeoBundle 'jistr/vim-nerdtree-tabs'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-afterimage'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'kchmck/vim-coffee-script'
NeoBundle 'anzaika/go.vim'
NeoBundle 'mutewinter/ir_black_mod'
NeoBundle 'godlygeek/csapprox'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'majutsushi/tagbar'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'rking/ag.vim'
NeoBundle 'dbext.vim'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'uguu-org/vim-matrix-screensaver'




""
"" Settings
""

" plugins, indents, syntax, filetypes
filetype plugin indent on
syntax on

" install if needed. quit on first install
if !isdirectory($HOME.'/.vim/bundle/tagbar')
  NeoBundleInstall
  qall
else
  NeoBundleCheck
endif

" cool ASCII arrows in NERDTree
let NERDTreeDirArrows=1

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?
\ "\<Plug>(neosnippet_expand_or_jump)"
\: pumvisible() ? "\<C-n>" : "\<TAB>"

" For snippet_complete marker.
if has('conceal')
  set conceallevel=2 concealcursor=i
endif

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

" force 256 colors
set t_Co=256

" make airline look sexy
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" indent guides aren't annoying
let g:indent_guides_guide_size=1
let g:indent_guides_start_level=2

" unwanted whitespace indicators
set list
set listchars=tab:>_,trail:_

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
hi! link ColorColumn StatusLine

" CtrlP options
set wildignore+=.git/*
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

" enable neocomplete
let g:neocomplete#enable_at_startup = 1

" per project .vimrc
set exrc
set secure



""
"" Extra Mappings
""

let g:ctrlp_map = '<Leader>p'
nmap <silent> <Leader>o :CtrlPTag<CR>
nmap <silent> <Leader>b :CtrlPBuffer<CR>
nmap <silent> <C-D> :NERDTreeTabsToggle<CR>
nmap <silent> <Leader>t :TagbarToggle<CR>
nmap <silent> ~ :tabnext<CR>
nmap <silent> ~~ :tabnew<CR>
nmap <silent> <Tab> :bnext<CR>
nmap <silent> <S-Tab> :bprevious<CR>
