syntax on
colorscheme zenburn
if has('gui_running')
	set guifont=Consolas:h10:cRUSSIAN
endif
set guioptions-=T
au GUIEnter * simalt ~x
call pathogen#infect() 
filetype plugin indent on 
set number
set tabstop=4
set hidden

