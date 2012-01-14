set guifont=Menlo-Powerline:h18
set guioptions-=T
set guioptions-=r
set guioptions-=R
set guioptions-=l
set guioptions-=L
set fuoptions=maxvert,maxhorz

set background=dark

if has("gui_macvim")
	macmenu &File.New\ Tab key=<nop>
	map <D-t> :CommandT<CR>
	let g:Powerline_symbols='fancy'
endif

