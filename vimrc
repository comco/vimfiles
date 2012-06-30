syntax on
colorscheme zenburn
if has('gui_running')
	set guifont=Consolas:h11:cRUSSIAN
endif
au GUIEnter * simalt ~x

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

filetype plugin indent on 
