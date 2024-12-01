return {
  "tpope/vim-fugitive",
  dependencies = { "tpope/vim-rhubarb" },
  cmd = "G",
  keys = function()
    return {
      { "<leader>gb", "<cmd>Git blame<cr>", desc = "Git Blame" },
    }
  end,
}
