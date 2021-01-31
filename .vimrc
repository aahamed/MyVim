" Include the system settings
:if filereadable( "/etc/vimrc" )
   source /etc/vimrc
:endif


" Vundle Information
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

" Colorscheme Molokai
Plugin 'tomasr/molokai'

" Cursor Plugin
Plugin 'jszakmeister/vim-togglecursor'

" Status bar plugin
Plugin 'vim-airline/vim-airline'

"Tagbar — For browsing tags and viewing the outline"
Plugin 'majutsushi/tagbar'

"IndentLine Plugin
Plugin 'Yggdroot/indentLine'

"CtrlP Plugin
Plugin 'ctrlpvim/ctrlp.vim'

"CtrlP Buffer Delete Plugin
Plugin 'd11wtq/ctrlp_bdelete.vim'

"Supertab Plugin
Plugin 'ervandew/supertab'

"Tmuxline
Plugin 'edkolev/tmuxline.vim'

"vimtex
Plugin 'lervag/vimtex'

" vim-go
" Plugin 'fatih/vim-go'

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


" Put your own customizations below

syntax on
set number
set cursorline
let g:reahash256=1
colorscheme molokai
set ignorecase      " ignore case when searching
set smartcase
set vb              " turn off error beep/flash
set nostartofline   " don't jump to first character when paging
"set mouse=a         " set mouse support in console
set showmatch       " Show matching brackets.
"set lazyredraw
"set list lcs=tab:\|\ "<- there is a space here"
set wildmenu
set splitright
set splitbelow
set hlsearch

" no jump on *
nnoremap * *``

" Press Funtion key 5 to toggle :set number
:nnoremap <F5> :set invnumber<CR>

"Airline
let g:airline#extensions#tabline#enabled = 1
" Just show the filename (no path) in the tab
let g:airline#extensions#tabline#fnamemod = ':t'

" Buffer Cycling
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

" quickfix close
:nnoremap <leader>cc :cclose<CR>

"map \tb to open tagbar
map <leader>tb :TagbarToggle<cr>

"mappings for CtrlP
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
:nnoremap <C-b> :CtrlPBuffer<CR>
let g:ctrlp_working_path_mode = 'a'
let g:ctrlp_root_markers = ['p4conf']

" Ctrlp delete buffer
call ctrlp_bdelete#init()


" Tmuxline Separators
let g:tmuxline_separators = {
    \ 'left' : '',
    \ 'left_alt': '>',
    \ 'right' : '',
    \ 'right_alt' : '<',
    \ 'space' : ' '}

" LaTeX
let g:tex_flavor = 'latex'
let g:vimtex_view_method = 'skim'
let g:vimtex_quickfix_open_on_warning = '0'
