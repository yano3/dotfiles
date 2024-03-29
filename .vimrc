set nocompatible
syntax on
set nobackup
set noswapfile
set nowrap
set noundofile

" Vundle
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

Plugin 'Align'
Plugin 'altercmd'
Plugin 'Gist.vim'
Plugin 'nginx.vim'
Plugin 'quickrun.vim'
Plugin 'Simple-Javascript-Indenter'
Plugin 'smartchr'
Plugin 'sudo.vim'
Plugin 'YankRing.vim'
" github
Plugin 'arcticicestudio/nord-vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'glidenote/memolist.vim'
Plugin 'hashivim/vim-terraform'
Plugin 'itchyny/lightline.vim'
Plugin 'mattn/ctrlp-ghq'
Plugin 'mattn/vim-lsp-icons'
Plugin 'mattn/vim-lsp-settings'
Plugin 'mattn/webapi-vim'
Plugin 'prabirshrestha/async.vim'
Plugin 'prabirshrestha/asyncomplete.vim'
Plugin 'prabirshrestha/asyncomplete-buffer.vim'
Plugin 'prabirshrestha/asyncomplete-lsp.vim'
Plugin 'prabirshrestha/vim-lsp'
Plugin 'puppetlabs/puppet-syntax-vim'
Plugin 'thinca/vim-openbuf'
Plugin 'vim-scripts/vim-auto-save'
Plugin 'VundleVim/Vundle.vim'

filetype plugin indent on

" encoding
set encoding=utf-8
set fileencodings=utf-8,euc-jp

" tab
set expandtab
set softtabstop=4
set shiftwidth=4

" indent
set autoindent
set smartindent
if v:version >= 800
    set breakindent
endif

" appearance
set number
set ruler
set shortmess-=S
set showmatch
set laststatus=2
colorscheme nord
set cursorline
set listchars=tab:>.,trail:_
set list
set signcolumn=yes
language message C

" true color in terminal
set termguicolors
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" bells
set visualbell t_vb=
set noerrorbells

" search
set ignorecase
set smartcase
set noincsearch
set hlsearch

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
nnoremap <ESC><ESC> :nohlsearch<CR>

" indent
autocmd FileType go     setlocal shiftwidth=4 softtabstop=4 tabstop=4 noexpandtab
autocmd FileType php    setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd FileType puppet setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType ruby   setlocal shiftwidth=2 softtabstop=2 expandtab
autocmd FileType yaml   setlocal shiftwidth=2 softtabstop=2 expandtab

" php
let php_folding=1
let php_sql_query=1

" lightline.vim
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }

" vim-auto-save
let g:auto_save = 1
let g:auto_save_in_insert_mode = 0

" ctrlp
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_match_window = 'bottom,order:btt,min:2,max:10,results:100'
nnoremap <silent> ;; :<C-u>CtrlPBuffer<CR>
nnoremap <silent> ;h :<C-u>CtrlPMRUFiles<CR>
nnoremap <silent> ;f :<C-u>CtrlP<CR>
nnoremap <silent> ;d :<C-u>CtrlP %:h<CR>
nnoremap <silent> ;l :<C-u>CtrlPLine<CR>
nnoremap <silent> ;g :<C-u>CtrlPGhq<CR>
nnoremap <silent> ;c :<C-u>CtrlP pwd<CR>

" asyncomplete
call asyncomplete#register_source(asyncomplete#sources#buffer#get_source_options({
    \ 'name': 'buffer',
    \ 'whitelist': ['*'],
    \ 'blacklist': ['go'],
    \ 'completor': function('asyncomplete#sources#buffer#completor'),
    \ 'config': {
    \    'max_buffer_size': 5000000,
    \  },
    \ }))

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
inoremap <expr> = smartchr#loop('=', ' = ', ' := ', ' == ', ' === ')
inoremap <expr> > smartchr#loop('>', '->', ' => ', '=>')

if filereadable(expand('~/.vimrc.local'))
  source ~/.vimrc.local
endif

