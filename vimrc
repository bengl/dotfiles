
nmap <silent> <C-D> :NERDTreeToggle<CR>

filetype off

set tabstop=2
set shiftwidth=2
set smartindent
"set expandtab

set colorcolumn=120 "needs vim 7.3+

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on
syntax on

set number
set ofu=syntaxcomplete#Complete
imap <M-Space> <C-X><C-O>
set mouse=a

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=0         "this is just what i use

let NERDTreeDirArrows=1

set incsearch
set hlsearch

"if has('gui_running')
"	colorscheme solarized
"  set background=dark
"endif

let g:ConqueTerm_Color = 1
let g:ConqueTerm_InsertOnEnter = 0
