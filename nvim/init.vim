
"--------------------------------------------------------------------------
" General settings
"--------------------------------------------------------------------------
syntax enable

set omnifunc=syntaxcomplete#Complete
set smartindent
set expandtab " insert spaces when tab is pressed
set shiftwidth=4 " number of spaces when shift indenting
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set hidden  " better buffer handling
set signcolumn=yes " always show signcolumn
set spell " do spellchecking
set title " show title in statusline
set list " show whitespace as chars
set listchars=tab:▸\ ,trail:· " show tabs as arrow right and trailing spaces as dots
set mouse=a " enable copy/paste of text selected using the mouse
set scrolloff=8 " keep cursor in the middle of the screen as much as reasonable
set sidescrolloff=8 " keep cursor in the middle of the screen as much as reasonable
set splitright " when a pane is split, go right by default
set number relativenumber " show hybrid line numbers
set cursorline " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches
set clipboard=unnamedplus " use system clipboard

"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------
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

" Prettier Settings
let g:prettier#quickfix_enabled = 0
let g:prettier#autoformat_require_pragma = 0
au BufWritePre *.css,*.svelte,*.pcss,*.html,*.ts,*.js,*.json PrettierAsync

"--------------------------------------------------------------------------
" Keymaps
"--------------------------------------------------------------------------
let mapleader = "\<space>"

" easy access to vim settings
nmap <leader>ve :edit ~/.config/nvim/init.vim<cr>
nmap <leader>vc :edit ~/.config/nvim/coc-settings.json<cr>
nmap <leader>vr :source ~/.config/nvim/init.vim<cr>

" Find files using Telescope command-line sugar.
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv
