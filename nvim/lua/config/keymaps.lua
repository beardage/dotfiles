-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = LazyVim.safe_keymap_set

map("n", "<A-k>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
map("n", "<A-j>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
map("n", "<A-l>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
map("n", "<A-h>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

map("n", "<A-J>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-K>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-J>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-K>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
