set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" Colorscheme Molokai
Plugin 'tomasr/molokai'

" File Explorer
Plugin 'scrooloose/nerdtree'

" Cursor Plugin
Plugin 'jszakmeister/vim-togglecursor'

" Status bar plugin
Plugin 'vim-airline/vim-airline'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on

" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal

" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" General
" 
set t_Co=256
set encoding=utf8
set number
set cursorline
let g:reahash256=1
colorscheme molokai

"C++ style guide
set shiftwidth=2    " numbers of spaces to (auto)indent
set softtabstop=2
set tabstop=2       " numbers of spaces of tab character
set expandtab       " spaces are better than a tab character
set smarttab
set autoindent
set ignorecase      " ignore case when searching
set smartcase
set hlsearch        " highlight searches
set incsearch       " incremental searches
set vb              " turn off error beep/flash
set nostartofline   " don't jump to first character when paging
" set mouse=a         " set mouse support in console
set showmatch       " Show matching brackets.
set nocompatible    " vim, not vi

"NerdTree
"map ctrl-n to open nerd tree
map <C-n> :NERDTreeToggle<CR>
"close vim if only window left is nerd tree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

"Airline
let g:airline#extensions#tabline#enabled = 1
