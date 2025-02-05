vim.opt.smartindent = true
vim.opt.expandtab = true -- insert spaces when tab is pressed
vim.opt.shiftwidth = 4 -- number of spaces when shift indenting
vim.opt.tabstop = 4 -- number of visual spaces per tab
vim.opt.softtabstop = 4 -- number of spaces in tab when editing
vim.opt.hidden = true --  better buffer handling
vim.opt.signcolumn = "number" --  show sign in numbercolumn
vim.opt.title = true --  show title in statusline
vim.opt.list = true --  show whitespace as chars
vim.opt.listchars = { tab = "▸ ", trail = "·" } --  show tabs as arrow right and trailing spaces as dots
vim.opt.mouse = "a" --  enable copy/paste of text selected using the mouse
vim.opt.scrolloff = 8 --  keep cursor in the middle of the screen as much as reasonable
vim.opt.sidescrolloff = 8 --  keep cursor in the middle of the screen as much as reasonable
vim.opt.splitright = true --  when a pane is split, go right by default
vim.opt.relativenumber = true --  show hybrid line numbers
vim.opt.cursorline = true --  highlight current line
vim.opt.showmatch = true --  highlight matching [{()}]
vim.opt.incsearch = true --  search as characters are entered
vim.opt.hlsearch = true --  highlight matches
vim.opt.clipboard = "unnamedplus" -- use system clipboard
vim.opt.completeopt = "menu,menuone,noselect"
vim.opt.termguicolors = true
vim.opt.laststatus = 3     -- single status line (nvim 0.7+ only)
vim.opt.winbar = "%=%m %f" -- add winbar to top of each split
vim.opt.cmdheight = 0
vim.opt.swapfile = false
vim.o.sessionoptions = "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"
vim.o.shortmess = "ltToOCFW"
