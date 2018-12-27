set nocompatible
"set encoding=utf-8
"set fileencodings=iso-2022-jp,euc-jp,sjis,utf-8
set fileformats=unix,dos,mac
"setting
set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set clipboard=unnamed
set foldmethod=syntax

"Œ©‚½–ÚŒn
set number
hi LineNr ctermfg=239

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
call dein#begin(expand('~/.vim/dein'))

call dein#add('Shougo/dein.vim')

call dein#add('plasticboy/vim-markdown')
call dein#add('kannokanno/previm')
call dein#add('tyru/open-browser.vim')
call dein#add('vim-scripts/dbext.vim')
call dein#add('rust-lang/rust.vim')
call dein#add('derekwyatt/vim-scala')
call dein#add('Shougo/vimfiler.vim')
call dein#add('scrooloose/nerdtree')
call dein#end()

if dein#check_install()
  call dein#install()
endif

filetype plugin indent on

au BufRead,BufNewFile *.md set filetype=markdown

nnoremap <C-b> :w<CR>:make<CR>
