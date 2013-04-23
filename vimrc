" stop pretending you're vi
set nocompatible
" just a test

" turn the syntax highlighting on
syntax on

" highlight search matches
set hlsearch

" select my favourite theme
set t_Co=256
let g:zenburn_old_Visual = 1
let g:zenburn_alternative_Visual = 1
colorscheme zenburn

" select a nice font
if has('gui_running')
    if has("gui_gtk2")
        set guifont=DejaVu\ Sans\ Mono\ 12
    else
        set guifont=Consolas:h10:cRUSSIAN
    endif
endif

" initialize pathogen plugins
call pathogen#infect() 
call pathogen#helptags()

filetype plugin indent on

" show line numbers
set number
set ruler

" hide buffers instead of closing them
set hidden

" define some nice global indentation semantics
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" make backspace work as expected
set backspace=indent,eol,start

" show matching parenthesis
set showmatch

" no beep
set visualbell
set noerrorbells

" set the default file encoding
set fileencodings=utf-8 encoding=utf-8

" changes cursor in different modes
if has("autocmd")
    au VimEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au InsertEnter * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
    au InsertLeave * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape block"
    au VimLeave    * silent execute "!gconftool-2 --type string --set /apps/gnome-terminal/profiles/Default/cursor_shape ibeam"
endif
