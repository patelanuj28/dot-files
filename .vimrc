
set autoindent
set sw=4

syntax on

"colorscheme dante
" colorscheme herald
colorscheme molokai


set nocompatible               " be iMproved
 filetype off                   " required!

 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 "Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 Bundle 'altercation/vim-colors-solarized' 
 Bundle 'https://github.com/tpope/vim-fugitive'
 "Bundle 'joonty/vim-phpqa.git'
 Bundle 'Syntastic'
 Bundle 'jistr/vim-nerdtree-tabs'
 "Plugin 'scrooloose/nerdtree'
 " Bundle 'shawncplus/phpcomplete.vim'
 " ...

 filetype plugin indent on     " required! 
 ":BundleInstall
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..

autocmd BufNewFile,Bufread *.php set keywordprg="help"

set cursorline
set expandtab
set modelines=0
set clipboard=unnamed
set synmaxcol=128
set ttyscroll=10
set encoding=utf-8
set nowrap
set number
set nowritebackup
set noswapfile
set nobackup
set hlsearch
set ignorecase
set smartcase
set backspace=indent,eol,start

set ic
set noai
set errorbells
set magic
set mesg
"set nonumber
set report=1
set showmatch
set showmode
set timeout
set warn
set wrapscan
set nowriteany
set shiftwidth=4
set softtabstop=4
set tabstop=4
set hlsearch
set incsearch
set ruler
set showcmd
" Convert existing tabs to space --->  :retab
" set mouse=a
" "set directory=/home/cf/tmp
" "colorscheme desert
" set enc=utf-8
"
set showtabline=2

" Format JSON data
map <C-F6> :%!python -m json.tool<CR>
set omnifunc=csscomplete#CompleteCSS

"set colorcolumn=120


"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
"autocmd vimenter * NERDTree
"
"NERDTree
"python from powerline.vim import setup as powerline_setup
"python powerline_setup()
set rtp+=$HOME/Library/Python/2.7/lib/python/site-packages/powerline/bindings/vim/
set laststatus=2
"python del powerline_setup
"
execute pathogen#infect()
syntax on
filetype plugin indent on


set switchbuf=usetab
nnoremap <F6> :sbnext<CR>
nnoremap <F5> :sbprevious<CR>


set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set encoding=utf-8
set t_Co=256
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8


if has("gui_running")
    let s:uname = system("uname")
    if s:uname == "Darwin\n"
        set guifont=Inconsolata\ for\ Powerline:h15
    endif
endif

