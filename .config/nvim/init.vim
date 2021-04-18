set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'godlygeek/tabular'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'ayu-theme/ayu-vim'
Plug 'ap/vim-css-color'
Plug 'crusoexia/vim-monokai'
Plug 'dense-analysis/ale'
Plug 'lervag/vimtex'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'mattn/emmet-vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
filetype plugin indent on

syntax on
set noerrorbells
set ttimeoutlen=13

let mapleader=" "
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
let NERDTreeShowHidden=1
let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
"let g:user_emmet_expandabbr_key = '<Tab>'
" --- vim html (polyglot) settings
let g:html5_event_handler_attributes_complete = 0
let g:html5_rdfa_attributes_complete = 0
let g:html5_microdata_attributes_complete = 0
let g:html5_aria_attributes_complete = 0

let g:loaded_python3_provider=1
"let g:python3_host_prog = 1

let g:vim_markdown_frontmatter = 1  
let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1 
let g:mkdp_auto_close = 0

set background=dark
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set cindent
set nu rnu
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
set mouse=a

au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-

inoremap jj <ESC>
nnoremap <leader>t :terminal<CR>
nnoremap <leader> :nohlsearch<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <Leader>+ :vertical resize +5<CR>
nnoremap <Leader>- :vertical resize -5<CR>
nnoremap <Leader>c :bw<CR>
nnoremap <A-m> :MarkdownPreview<CR>
nnoremap <A-a> :bprev<CR>
nnoremap <A-d> :bnext<CR>
map <C-n> :NERDTreeToggle<CR>
nmap <silent> gd <Plug>(coc-definition)

nnoremap <silent> K :call <SID>show_documentation()<CR>
function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <leader>rn <Plug>(coc-rename)

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey


if has('termguicolors')
  set termguicolors
endif
colorscheme monokai
