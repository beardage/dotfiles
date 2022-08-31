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
    'mrjones2014/smart-splits.nvim'
    config = function()
        require('beardage.plugins.smart-splits')
    end
})
