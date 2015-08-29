set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-rails'
Plugin 'tpope/vim-bundler'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdcommenter'

set background=dark
colorscheme codeschool
let g:colors_name="codeschool"

set nu
set numberwidth=4
set splitbelow
set splitright
set wildmenu " Show list instead of just completing
set autoindent " Copy indent from last line when starting new line.
set colorcolumn=80 " mark col 80
set cursorline " Highlight current line
set diffopt=filler " Add vertical spaces to keep right and left aligned
set diffopt+=iwhite " Ignore whitespace changes (focus on code changes)


"Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
nmap <C-u> :NERDTreeToggle<CR>
let NERDTreeIgnore = ['\.pyc$']

" CtrlP related settings
let g:ctrlp_working_path_mode = ''
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc,*.pyc,tags
set wildmenu


" We do utf-8
scriptencoding utf-8
set encoding=utf-8

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
