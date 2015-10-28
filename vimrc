set nocompatible                   " be iMproved, required
filetype off                       " required
syntax enable                      " Turn on syntax highlighting.
"filetype plugin indent on         " Turn on file type detection.

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
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

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               GENERAL
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set nocompatible
" Allows reusing a window without saving first
set hidden
" Command-line completion
set wildmenu
" Show current command
set showcmd
" Allow mouse usage
set mouse=a
set ruler
" Always show bottom bar
set laststatus=2
" Ask if you wish to save instead of failing command
set confirm

" Folding
set foldmethod=syntax
set foldlevel=20

" We do utf8
set encoding=utf8
scriptencoding utf-8

" Spelling 
" Toggle spell checking on and off with `,s`
let mapleader = ","
nmap <silent> <leader>s :set spell!<CR>
set spell spelllang=en_us
" mark bad spelled words with red
highlight SpellErrors gui=underline ctermfg=Red guifg=Red

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Eyecandy
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"highlight current row
set cursorline
" Enable Syntax highlighting
syntax enable
" Visual bell instead of beeping
set visualbell
" filetype specific highlighting and intentation
filetype plugin indent on

" Display line numbers on the left
set number
set confirm
" keep at least 5 lines above/below
set scrolloff=5                     
" keep at least 5 lines left/right
set sidescrolloff=5    


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Searching 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Highlight search
set hlsearch
set ignorecase
set smartcase

" partial search while searching
set incsearch
set wrapscan

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Indentation
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Width of tab character. Unused if expandtab is set
set tabstop=2
" Legth of tabs created with <<>>
set shiftwidth=2
" Number of spaces to use instead of tab if expandtab is set
set softtabstop=2
" Use spaces instead of tabs
set expandtab
set autoindent

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Undo
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set history=1000                    
" where to save undo histories
if !isdirectory($HOME."/.vim")
    call mkdir($HOME."/.vim", "", 0770)
endif
if !isdirectory($HOME."/.vim/.undos")
    call mkdir($HOME."/.vim/.undos", "", 0700)
endif
" where to save undo histories
set undodir=~/.vim/.undos         
" save undo's after file closes
set undofile    
" how many undos
set undolevels=1000                 
" number of lines to save for undo
set undoreload=10000


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               CtrlP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_working_path_mode = ''
set wildignore=.svn,CVS,.git,.hg,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif,.DS_Store,*.aux,*.out,*.toc,tmp,*.scssc,*.pyc,tags

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Split row at cursor
nnoremap <leader>c i<CR><Esc>
" Reset search with ctrl-l
nnoremap <C-L> :nohl<CR><C-L>
nnoremap <Space> za

nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>

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
