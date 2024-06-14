set nocompatible
filetype off

call plug#begin('~/.vim/plugged')
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }}
Plug 'ayu-theme/ayu-vim'
Plug 'ap/vim-css-color'
Plug 'crusoexia/vim-monokai'
Plug 'morhetz/gruvbox'
Plug 'ThePrimeagen/vim-be-good', {'do': './install.sh'}
Plug 'mattn/emmet-vim'
Plug 'cakebaker/scss-syntax.vim'


Plug 'Julian/lean.nvim'
Plug 'neovim/nvim-lspconfig'

" Optional Dependencies:

Plug 'hrsh7th/nvim-cmp'        " For LSP completion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/vim-vsnip'       " For snippets
Plug 'andrewradev/switch.vim'  " For Lean switch support
Plug 'tomtom/tcomment_vim'

" Harpoon 
Plug 'nvim-lua/plenary.nvim'
Plug 'ThePrimeagen/harpoon' 
" Plug 'dense-analysis/ale'

" Solidity
" Plug 'TovarishFin/vim-solidity'
Plug 'tomlion/vim-solidity'

" tpope plugins
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb' " required by fugitive to :Gbrowse

" Go Plugins
Plug 'fatih/vim-go', {'do': ':GoInstallBinaries'}

" pyenv plugin
Plug 'lambdalisue/vim-pyenv'

" LATeX plugins
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }

" js and react plugins
Plug 'othree/yajs.vim'
Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'
" Plug 'epilande/vim-react-snippets'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mlaursen/vim-react-snippets'


" Telescope plugins
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzy-native.nvim', { 'do': 'make' }

" vim arduino plugins
Plug 'stevearc/vim-arduino'


Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
filetype plugin indent on


syntax on
set noerrorbells
set ttimeoutlen=13


let mapleader=" "


" vim-airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Nerdtree options
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
let g:user_emmet_leader_key = '<c-e>'
let g:user_emmet_expandabbr_key = '<C-y>'

"let g:loaded_python3_provider=1
let g:python3_host_prog = '/usr/bin/python3'

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
set incsearch
set hlsearch
set showmatch
set matchtime=3
set lazyredraw
set mouse=a



" ------------ Ultisnips Bindings ------------
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"





" ------------ Latex bindings ----------------
let g:livepreview_previewer = 'zathura'
let g:livepreview_engine = 'pdflatex'



" ---------- Telescope bindings ----------

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
" nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>ps :lua require('telescope.builtin').grep_string({ search = vim.fn.input("Grep For > ")})<CR>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

au BufRead,BufNewFile *.scss set filetype=scss.css
autocmd FileType scss set iskeyword+=-


inoremap <silent><expr> <c-space> coc#refresh()
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




" --------- Buffer Navigation -------------
noremap <leader>z :bp<CR> 
noremap <leader>q :bp<CR>
noremap <leader>x :bn<CR>
noremap <leader>w :bn<CR>


" vim-arduino keybindings
nnoremap <buffer> <leader>hm :ArduinoVerify<CR>
nnoremap <buffer> <leader>pu ArduinoUpload<CR>
nnoremap <buffer> <leader>pd ArduinoUploadAndSerial<CR>
nnoremap <buffer> <leader>pb ArduinoChooseBoard<CR>
nnoremap <buffer> <leader>pp ArduinoChooseProgrammer<CR>


" tab navigation
nnoremap <leader>n :tabnext <CR>
nnoremap <leader>p :tabprevious <CR>


" Nerd tree
map <C-n> :NERDTreeToggle<CR>

" coc definition
nmap <silent> gd <Plug>(coc-definition)

" coc completion
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"


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


colorscheme gruvbox
