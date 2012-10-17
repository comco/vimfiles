" stop pretending you're vi
set nocompatible

" turn the syntax highlighting on
syntax on

" highlight search matches
set hlsearch

" select my favourite theme
colorscheme zenburn

" select a nice font
if has('gui_running')
	set guifont=Consolas:h10:cRUSSIAN
endif

" make gvim fullscreen
set guioptions-=T
au GUIEnter * simalt ~x

" initialize pathogen plugins
call pathogen#infect() 


filetype plugin indent on

" show line numbers
set number

" hide buffers instead of closing them
set hidden

" define some nice global indentation semantics
set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab

" make backspace work as expected
set backspace=indent,eol,start

" show matching parenthesis
set showmatch

" no beep
set visualbell
set noerrorbells

" quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" set the default file encoding
set fileencodings=utf-8 encoding=utf-8
