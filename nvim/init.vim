syntax enable


set omnifunc=syntaxcomplete#Complete
set smartindent
set shiftwidth=4 " number of spaces when shift indenting
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tab to spaces
set number relativenumber" show hybrid line numbers
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set clipboard=unnamedplus " use system clipboard

" plugins
call plug#begin()
Plug 'dracula/vim',{'as':'dracula'}
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'codechips/coc-svelte', {'do': 'npm install'}
Plug 'evanleck/vim-svelte'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier', { 'do': 'npm install' }
Plug 'tpope/vim-fugitive'
call plug#end()

color dracula
hi Normal guibg=NONE ctermbg=NONE
let mapleader = "\<space>"
" Prettier Settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

