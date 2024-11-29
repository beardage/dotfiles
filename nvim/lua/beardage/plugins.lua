-- Install packer
local is_bootstrap = false
local install_path = vim.fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	is_bootstrap = true
	vim.fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
	vim.cmd([[packadd packer.nvim]])
end

-- Initialize packer
require("packer").init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "solid" })
		end,
	},
})

-- Install plugins
local use = require("packer").use

use("wbthomason/packer.nvim") -- Let packer manage itself

use({
	"tpope/vim-commentary",
	cond = [[not vim.g.vscode]],
})
-- indent autodetection with editorconfig support
use({
	"tpope/vim-sleuth",
	cond = [[not vim.g.vscode]],
})
use({
	"tpope/vim-fugitive",
	requires = "tpope/vim-rhubarb",
	cmd = "G",
	config = function()
		require("beardage.plugins.fugitive")
	end,
})

use({
	"mrjones2014/smart-splits.nvim",
	config = function()
		require("beardage.plugins.smart-splits")
	end,
})

use({
	"beardage/orlock.nvim",
	cond = [[not vim.g.vscode]],
	config = function()
		if not vim.g.vscode then
			vim.cmd("colorscheme orlock")
		end
	end,
})

use({
	"nvim-lualine/lualine.nvim",
	cond = [[not vim.g.vscode]],
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
		require("beardage.plugins.lualine")
	end,
})

use({
	"kyazdani42/nvim-tree.lua",
	cond = [[not vim.g.vscode]],
	requires = "kyazdani42/nvim-web-devicons",
	config = function()
		require("beardage.plugins.nvim-tree")
	end,
})

use({
	"nvim-telescope/telescope.nvim",
	cond = [[not vim.g.vscode]],
	requires = {
		{ "nvim-lua/plenary.nvim" },
		{ "kyazdani42/nvim-web-devicons" },
		{ "nvim-telescope/telescope-fzf-native.nvim",    run = "make" },
		{ "nvim-telescope/telescope-live-grep-args.nvim" },
	},
	config = function()
		require("beardage.plugins.telescope")
	end,
})

use({
	"nvim-treesitter/nvim-treesitter",
	cond = [[not vim.g.vscode]],
	run = ":TSUpdate",
	requires = {
		"nvim-treesitter/playground",
		"nvim-treesitter/nvim-treesitter-textobjects",
		"JoosepAlviste/nvim-ts-context-commentstring",
		"windwp/nvim-ts-autotag",
	},
	config = function()
		require("beardage.plugins.treesitter")
	end,
})

use({
	"hrsh7th/nvim-cmp",
	cond = [[not vim.g.vscode]],
	requires = {
		"neovim/nvim-lspconfig",
		"hrsh7th/cmp-nvim-lsp",
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
		"hrsh7th/cmp-cmdline",
		"hrsh7th/cmp-nvim-lsp-signature-help",
		"onsails/lspkind.nvim",
		"rafamadriz/friendly-snippets",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
	},
	config = function()
		require("beardage.plugins.cmp")
	end,
})

use({
	"neovim/nvim-lspconfig",
	cond = [[not vim.g.vscode]],
	requires = {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"hrsh7th/cmp-nvim-lsp",
	},
	config = function()
		require("beardage.plugins.lspconfig")
	end,
})

use("psliwka/vim-smoothie")

use({
	"nmac427/guess-indent.nvim",
	config = function()
		require("guess-indent").setup({})
	end,
})

use({
	"folke/todo-comments.nvim",
	requires = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("todo-comments").setup()
	end,
})

use({
	"norcalli/nvim-colorizer.lua",
	config = function()
		require("colorizer").setup()
	end,
})

use({
	"rmagatti/auto-session",
	cond = [[not vim.g.vscode]],
	config = function()
		require("auto-session").setup({
			pre_save_cmds = { "NvimTreeClose" },
			save_extra_cmds = {
				"NvimTreeOpen",
			},
			post_restore_cmds = {
				"NvimTreeOpen",
			},
		})
	end,
})

use("gpanders/editorconfig.nvim")

use({
	"nvimtools/none-ls.nvim",
	requires = {
		"nvim-lua/plenary.nvim",
		"nvimtools/none-ls-extras.nvim",
	},
	config = function()
		require("beardage.plugins.null-ls")
	end,
})

use({
	"mg979/vim-visual-multi",
	cond = [[not vim.g.vscode]],
})

use({
	"numToStr/FTerm.nvim",
	config = function()
		require("beardage.plugins.fterm")
	end,
})

use({
	"nvim-zh/colorful-winsep.nvim",
	config = function()
		require("colorful-winsep").setup()
	end,
})

use({
	"windwp/nvim-autopairs",
	config = function()
		require("nvim-autopairs").setup()
	end,
})

use({
	"ThePrimeagen/harpoon",
	cond = [[not vim.g.vscode]],
	requires = { "nvim-lua/plenary.nvim" },
})

use({
	"Asheq/close-buffers.vim",
})

use({
	"github/copilot.vim",
})

-- for practice
-- use("ThePrimeagen/vim-be-good")
