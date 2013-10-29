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
Bundle 'nginx.vim'
Bundle 'quickrun.vim'
Bundle 'Simple-Javascript-Indenter'
Bundle 'smartchr'
Bundle 'sudo.vim'
Bundle 'unite-colorscheme'
Bundle 'YankRing.vim'
" github
Bundle 'banyan/Nonopaste.vim'
Bundle 'choplin/unite-vim_hacks'
Bundle 'glidenote/memolist.vim'
Bundle 'h1mesuke/unite-outline'
Bundle 'mattn/favstar-vim'
Bundle 'mattn/webapi-vim'
Bundle 'plasticboy/vim-markdown'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/unite.vim'
Bundle 'Shougo/vimfiler'
Bundle 'thinca/vim-openbuf'

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
nnoremap <silent> ;p :Unite file_rec:!<CR>

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
nnoremap <silent> ;ml :Unite file:<C-r>=g:memolist_path."/"<CR><CR>
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

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

