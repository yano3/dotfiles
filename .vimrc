syntax on
set nobackup
set nowrap

" encoding
set encoding=utf-8

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
set showmatch
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'.(&bomb?'[BOM]':'')}%=%l,%c%V%8P
colorscheme desert
if v:version >= 700
    set cursorline
endif
set listchars=tab:>.,trail:_
set list
language message C

" search
set ignorecase
set smartcase
set noincsearch

" input method
set iminsert=0
set imsearch=0

" multi byte
set ambiwidth=double

" key maps
nnoremap j gj
nnoremap k gk
nnoremap x "_x
nnoremap <C-h> :<C-u>help<Space>

" php
let php_folding=1
let php_sql_query=1

" YankRing.vim
nmap ;y :YRShow<CR>
let g:yankring_n_keys = 'Y D'
"let g:yankring_n_keys = 'Y D x X'
"
" fuzzyfinder.vim
let g:fuf_modesDisable = [ 'mrucmd', ]
let g:fuf_patternSeparator = ' '
let g:fuf_mrufile_maxItem = 500
let g:fuf_enumeratingLimit = 20
nnoremap <silent> ;; :FufBuffer<CR>
nnoremap <silent> ;h :FufMruFile<CR>
nnoremap <silent> ;f :FufFile<CR>

" Simple Javascript Indenter
let g:SimpleJsIndenter_BriefMode = 1

" altercmd
call altercmd#load()
AlterCommand wq w

" smartchr
inoremap <expr> = smartchr#loop(' = ', ' == ', '=')

