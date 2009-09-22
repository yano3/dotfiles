syntax on
set nobackup
set nowrap

" tab
set expandtab
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

" fuzzyfinder.vim
let g:fuf_modesDisable = [ 'mrucmd', ]
let g:fuf_patternSeparator = ' '
let g:fuf_mrufile_maxItem = 500
let g:fuf_enumeratingLimit = 20
nnoremap <silent> ;; :FufBuffer<CR>
nnoremap <silent> ;h :FufMruFile<CR>
nnoremap <silent> ;f :FufFile<CR>
