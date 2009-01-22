syntax on

" tab
set expandtab
set tabstop=4

" appearance
set number
set ruler
colorscheme desert
if v:version >= 700
    set cursorline
endif

" search
set ignorecase
set smartcase

" input method
set iminsert=0
set imsearch=0

" key maps
nnoremap j gj
nnoremap k gk
