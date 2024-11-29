local keymap = require("lib.utils").keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- show line diagnostics_conf
keymap("n", "<space-e>", ":lua vim.diagnostic.open_float")

-- Reselect visual selection after indenting
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

-- Maintain the cursor position when yanking a visual selection
-- http://ddrscott.github.io/blog/2016/yank-without-jank/
keymap("v", "y", "myy`y")
keymap("v", "Y", "myY`y")

-- Move text up and down
keymap("i", "<A-j>", "<Esc>:move .+1<CR>==gi")
keymap("i", "<A-k>", "<Esc>:move .-2<CR>==gi")
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv")
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv")

--
keymap("x", "<leader>p", '"_dP')

-- use same shortcuts for vscodes comments
keymap("x", "gc", "<Plug>VSCodeCommentary")
keymap("n", "gc", "<Plug>VSCodeCommentary")
keymap("o", "gc", "<Plug>VSCodeCommentary")
keymap("n", "gcc", "<Plug>VSCodeCommentaryLine")
