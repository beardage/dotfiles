packadd! dracula
color dracula
syntax enable

set omnifunc=syntaxcomplete#Complete
set smartindent
set shiftwidth=4 " number of spaces when shift indenting
set tabstop=4 " number of visual spaces per tab
set softtabstop=4 " number of spaces in tab when editing
set expandtab " tab to spaces
set number " show line numbers
set relativenumber
set cursorline  " highlight current line
set showmatch " highlight matching [{()}]
set incsearch " search as characters are entered
set hlsearch " highlight matches

" plugins
call plug#begin()
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
call plug#end()
