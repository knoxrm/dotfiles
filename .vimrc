set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'delimitMate.vim'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'preservim/nerdtree'
Plugin 'ayu-theme/ayu-vim'
Plugin 'ap/vim-css-color'
Plugin 'crusoexia/vim-monokai'
call vundle#end()
filetype plugin indent on

syntax on
set noerrorbells
set ttimeoutlen=13

let mapleader=","
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:indentLine_char = ''
let g:indentLine_first_char = ''
let g:indentLine_showFirstIndentLevel = 1
let g:indentLine_setColors = 0
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''


set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set hlsearch
set showmatch
set matchtime=3
set lazyredraw

nnoremap <leader><space> :nohlsearch<CR>
map <C-n> :NERDTreeToggle<CR>


set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


if has('termguicolors')
  set termguicolors
endif
colorscheme monokai
