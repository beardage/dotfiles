return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>ff", LazyVim.pick("files"), desc = "Find Files (Root Dir)" },
    {
      "<leader>fF",
      LazyVim.pick("files", { hidden = true, no_ignore = true }),
      desc = "Find Files (Root Dir) (including hidden)",
    },
    { "<leader>fg", LazyVim.pick("live_grep", { hidden = false, no_ignore = false }), desc = "Grep (Root Dir)" },
    {
      "<leader>fG",
      LazyVim.pick("live_grep", { hidden = true, no_ignore = true }),
      desc = "Grep (Root Dir) (including hidden)",
    },
    {
      "<leader>fb",
      "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
      desc = "Switch Buffer",
    },
  },
}
