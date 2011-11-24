set nocompatible
syntax on
set nobackup
set nowrap

let $PATH = $PATH . ':/opt/local/bin'

" Vundle
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'ack.vim'
Bundle 'Align'
Bundle 'altercmd'
Bundle 'Gist.vim'
Bundle 'neocomplcache'
Bundle 'quickrun.vim'
Bundle 'Simple-Javascript-Indenter'
Bundle 'smartchr'
Bundle 'unite.vim'
Bundle 'unite-colorscheme'
Bundle 'YankRing.vim'
" github
Bundle 'h1mesuke/unite-outline'
Bundle 'banyan/Nonopaste.vim'

filetype plugin indent on

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

" unite.vim
let g:unite_winheight = 10
let g:unite_enable_start_insert = 0
let g:unite_split_rule = 'botright'
let g:unite_source_file_mru_ignore_pattern = '\~$\|\.\%(o\|exe\|dll\|bak\|sw[po]\)$\|\%(^\|/\)\.\%(hg\|git\|bzr\|svn\)\%($\|/\)\|^\%(\\\\\|/mnt/\|/media/\)'
nnoremap <silent> ;; :Unite buffer<CR>
nnoremap <silent> ;h :Unite file_mru<CR>
nnoremap <silent> ;f :Unite file<CR>
nnoremap <silent> ;d :UniteWithBufferDir file<CR>
nnoremap <silent> ;o :Unite outline<CR>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

" YankRing.vim
nmap ;y :YRShow<CR>
let g:yankring_n_keys = 'Y D'
"let g:yankring_n_keys = 'Y D x X'

" Simple Javascript Indenter
let g:SimpleJsIndenter_BriefMode = 1

" altercmd
call altercmd#load()
AlterCommand wq w

" smartchr
inoremap <expr> = smartchr#loop(' = ', ' == ', ' === ', '=')
inoremap <expr> > smartchr#loop('>', '->', ' => ', '=>')

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

