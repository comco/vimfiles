syntax on
colorscheme zenburn
if has('gui_running')
	set guifont=Consolas:h11:cRUSSIAN
endif
au GUIEnter * simalt ~x
call pathogen#infect() 
filetype plugin indent on 
