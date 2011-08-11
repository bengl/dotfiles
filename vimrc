
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

set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=0

let NERDTreeDirArrows=1

set incsearch
set hlsearch

"let g:ConqueTerm_Color = 1
"let g:ConqueTerm_InsertOnEnter = 0
