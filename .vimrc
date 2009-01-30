syntax on

" tab
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" indent
set autoindent
set smartindent

" appearance
set number
set ruler
set laststatus=2
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

" omni completion
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
