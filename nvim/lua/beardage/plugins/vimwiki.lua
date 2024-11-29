local keymap = require("lib.utils").keymap

vim.g.vimwiki_list = { { path = "~/notes", syntax = "markdown", ext = ".md" } }
vim.g.vimwiki_ext2syntax = { [".md"] = "markdown", [".markdown"] = "markdown", [".mdown"] = "markdown" }

keymap("n", "<leader>li", [[<cmd>VimwikiListToggle<CR>]])
keymap("n", "<leader>tl", [[<cmd>VimwikiToggleListItem<CR>]])
