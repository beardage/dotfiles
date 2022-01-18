
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
" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin(data_dir . '/plugins')

source ~/.config/nvim/plugins/dracula.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/smoothie.vim
source ~/.config/nvim/plugins/airline.vim
source ~/.config/nvim/plugins/prettier.vim
source ~/.config/nvim/plugins/polyglot.vim
source ~/.config/nvim/plugins/fugitive.vim
source ~/.config/nvim/plugins/floatterm.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/vdebug.vim

call plug#end()
doautocmd User PlugLoaded

hi Normal guibg=NONE ctermbg=NONE

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

" NERDTree
nnoremap <expr> <leader>n g:NERDTree.IsOpen() ? ':NERDTreeClose<CR>' : @% == '' ? ':NERDTree<CR>' : ':NERDTreeFind<CR>'
nmap <leader>N :NERDTreeFind<CR>

" Maintain the cursor position when yanking a visual selection
" http://ddrscott.github.io/blog/2016/yank-without-jank/
vnoremap y myy`y
vnoremap Y myY`y

" Make Y behave like the other capitals
nnoremap Y y$
" Reselect visual selection after indenting
vnoremap < <gv
vnoremap > >gv
