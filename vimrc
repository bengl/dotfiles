" @bengl's vimrc
" ==============

call plug#begin()

Plug 'pangloss/vim-javascript'
Plug 'bling/vim-airline'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tpope/vim-fugitive'
Plug 'Valloric/YouCompleteMe', { 'do': './install.py --all'}
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'
Plug 'junegunn/goyo.vim'
Plug 'kopischke/vim-fetch'
Plug 'leafgarland/typescript-vim'
Plug 'flowtype/vim-flow'
Plug 'crusoexia/vim-monokai'

" local plugins
if filereadable($HOME.'/.vimrc_local_plugs')
  source $HOME/.vimrc_local_plugs
endif

call plug#end()


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

" super good searching
set incsearch
set hlsearch

colorscheme monokai

" always show the status line
set laststatus=2

" force 256 colors
set t_Co=256

" make airline look good
let g:airline_powerline_fonts = 0
let g:airline#extensions#tabline#enabled = 1

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

" 80 char limit
set colorcolumn=81
hi! link ColorColumn StatusLine

" highlight cursor line
set cursorline

" CtrlP options
set wildignore+=.git/*
let g:ctrlp_user_command = ['.git/', 'cd %s && git ls-files']

" per project .vimrc (not used in neovim)
set exrc
set secure

" make omnicomplete visible, and autohide preview
highlight Pmenu ctermbg=238 gui=bold
let g:ycm_autoclose_preview_window_after_completion = 1

" auto-wrap markdown
au BufRead,BufNewFile *.md setlocal textwidth=80

" Don't auto flow check on save
let g:flow#enable = 0

" preview substitutions inline
if exists('&inccommand')
  set inccommand=nosplit
endif

" make .js.flow files parse as .js
augroup javascript_extensions
  au!
  au BufNewFile,BufRead *.js.flow setlocal filetype=javascript
augroup END

""
"" Extra Mappings
""

let g:ctrlp_map = '<Leader>p'
nmap <silent> <Leader>d :NERDTreeTabsToggle<CR>
nmap <silent> <Leader>f :FZF<CR>
nmap <silent> <Tab> :bnext<CR>


" local changes
if filereadable($HOME.'/.vimrc_local')
  source $HOME/.vimrc_local
endif
