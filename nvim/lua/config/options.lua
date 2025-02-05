-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local o = vim.opt
local g = vim.g

o.winbar = "%=%m %f" -- add winbar to top of each split
o.tabstop = 4
o.wrap = true
g.lazyvim_eslint_auto_format = true
g.root_spec = { "cwd" }
