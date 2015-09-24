set nocompatible                   " be iMproved, required
filetype off                       " required
syntax enable                      " Turn on syntax highlighting.
"filetype plugin indent on         " Turn on file type detection.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'scrooloose/nerdtree'
Plugin 'bling/vim-airline'
Plugin 'gmarik/Vundle.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'kien/ctrlp.vim'
Plugin 'rizzatti/dash.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'tmhedberg/SimpylFold'
Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-rails'

" if you adde plugins run: vim +BundleInstall +qall

set t_Co=25
set showcmd			  								" display incomplete commandis
set showmode			  							" display the mode you're in.
set backspace=indent,eol,start	  " intuitive backspacing.
set hidden			  								" handle multiple buffers better.
set wildmenu                      " enhanced command line completion.
set wildmode=list:longest         " complete files like a shell.
set ignorecase                    " case-insensitive searching.
set smartcase                     " but case-sensitive if expression contains a capital letter.
set ruler			  									" show the cursor position all the time
set incsearch			  							" do incremental searching
set relativenumber
set incsearch                     " highlight matches as you type.
set hlsearch                      " highlight matches.
set wrap                          " turn on line wrapping.
set scrolloff=3                   " show 3 lines of context around the cursor.
set title                         " set the terminal's title
set visualbell                    " no beeping.
set nobackup                      " don't make a backup before overwriting a file.
set nowritebackup                 " and again.
set backupdir=/tmp		  					" set backupdir to temp
set autoindent			  						" always set autoindenting on
set history=50			  						" keep 50 lines of command line history
set tabstop=2			  							" global tab width.
set shiftwidth=2		  						" and again, related.
set expandtab			  							" use spaces instead of tabs

"Nerdtree
autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
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
nmap <C-u> :NERDTreeToggle<CR>

map <leader>tt :tabnew<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>to :tabonly<cr>
map <leader>tn :tabnext<cr>
map <leader>tp :tabprevious<cr>
map <leader>tf :tabfirst<cr>
map <leader>tl :tablast<cr>
map <leader>tm :tabmove

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
