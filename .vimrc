set nocompatible
syntax on
set nobackup
set noswapfile
set nowrap
set noundofile

let $PATH = $PATH . ':/opt/local/bin'

" Vundle
filetype off
set rtp+=~/.vim/vundle/
call vundle#rc()

Bundle 'ack.vim'
Bundle 'Align'
Bundle 'altercmd'
Bundle 'Gist.vim'
Bundle 'nginx.vim'
Bundle 'Puppet-Syntax-Highlighting'
Bundle 'quickrun.vim'
Bundle 'Simple-Javascript-Indenter'
Bundle 'smartchr'
Bundle 'sudo.vim'
Bundle 'YankRing.vim'
" github
Bundle 'AndrewRadev/switch.vim'
Bundle 'banyan/Nonopaste.vim'
Bundle 'ctrlpvim/ctrlp.vim'
Bundle 'glidenote/memolist.vim'
Bundle 'mattn/favstar-vim'
Bundle 'mattn/webapi-vim'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/vimfiler'
Bundle 'thinca/vim-openbuf'
Bundle 'vim-scripts/vim-auto-save'

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
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'.(&bomb?'[BOM]':'')}%=%4l,%2c%4P
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

" indent
autocmd FileType php  setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType ruby setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType go   setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab

" php
let php_folding=1
let php_sql_query=1

" vim-auto-save
let g:auto_save = 1

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:2,max:10,results:100'
nnoremap <silent> ;; <C-u>:CtrlPBuffer<CR>
nnoremap <silent> ;h <C-u>:CtrlPMRUFiles<CR>
nnoremap <silent> ;f <C-u>:CtrlP<CR>
nnoremap <silent> ;d <C-u>:CtrlP %:h<CR>
nnoremap <silent> ;l <C-u>:CtrlPLine<CR>

" neocomplcache
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_smart_case = 1

" YankRing.vim
nmap ;y :YRShow<CR>
let g:yankring_n_keys = 'Y D'
"let g:yankring_n_keys = 'Y D x X'
let g:yankring_manual_clipboard_check = 0

" memolist.vim
let g:memolist_path = "~/Dropbox/memolist"
nnoremap <silent> ;ml :exe "CtrlP" g:memolist_path<CR><F5>
nnoremap <silent> ;mn :MemoNew<CR>
nnoremap <silent> ;mg :MemoGrep<CR>

" Simple Javascript Indenter
let g:SimpleJsIndenter_BriefMode = 1

" altercmd
call altercmd#load()
AlterCommand wq w

" smartchr
inoremap <expr> = smartchr#loop(' = ', ' == ', ' === ', '=')
inoremap <expr> > smartchr#loop('>', '->', ' => ', '=>')

" switch.vim
nnoremap <silent> <Leader>t :<C-u>Switch<CR>

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

