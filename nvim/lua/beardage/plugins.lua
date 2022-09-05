-- Install packer
local is_bootstrap = false
local install_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  is_bootstrap = true
  vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

-- Initialize packer
require('packer').init({
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'solid' })
    end,
  },
})

-- Install plugins
local use = require('packer').use

use('wbthomason/packer.nvim') -- Let packer manage itself

use('tpope/vim-commentary')
use('tpope/vim-sleuth') -- indent autodetection with editorconfig support
use({
  'tpope/vim-fugitive',
  requires = 'tpope/vim-rhubarb',
  cmd = 'G',
})

use({
    'mrjones2014/smart-splits.nvim',
    config = function()
        require('beardage.plugins.smart-splits')
    end,
})

use({
    'beardage/orlock.nvim',
    config = function()
        vim.cmd('colorscheme orlock')
    end,
})

use({
  'nvim-lualine/lualine.nvim',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('beardage.plugins.lualine')
  end,
})

use({
  'kyazdani42/nvim-tree.lua',
  requires = 'kyazdani42/nvim-web-devicons',
  config = function()
    require('beardage.plugins.nvim-tree')
  end,
})

use({
  'nvim-telescope/telescope.nvim',
  requires = {
    { 'nvim-lua/plenary.nvim' },
    { 'kyazdani42/nvim-web-devicons' },
    { 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' },
    { 'nvim-telescope/telescope-live-grep-args.nvim' },
  },
  config = function()
    require('beardage.plugins.telescope')
  end,
})

use({
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate',
  requires = {
    'nvim-treesitter/playground',
    'nvim-treesitter/nvim-treesitter-textobjects',
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config = function()
    require('beardage.plugins.treesitter')
  end,
})

use({
  'hrsh7th/nvim-cmp',
  requires = {
    "neovim/nvim-lspconfig",
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'onsails/lspkind.nvim',
    'rafamadriz/friendly-snippets',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip'
  },
  config = function()
    require('beardage.plugins.cmp')
  end,
})

use({
    "neovim/nvim-lspconfig",
    requires = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      "hrsh7th/cmp-nvim-lsp"
    },
    config = function()
      require('beardage.plugins.lspconfig')
    end,
})

