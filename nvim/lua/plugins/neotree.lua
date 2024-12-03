return {
  "nvim-neo-tree/neo-tree.nvim",
  dependencies = {
    "s1n7ax/nvim-window-picker",
    opts = {
      hint = "floating-big-letter",
    },
  },
  cmd = "Neotree",
  keys = {
    {
      "<leader>t",
      function()
        require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd(), reveal = true })
      end,
    },
    {
      "<leader>tf",
      function()
        require("neo-tree.command").execute({ reveal = true })
      end,
    },
    { "<leader>e", false },
    { "<leader>E", false },
  },
  opts = {
    filesystem = {
      bind_to_cwd = true,
      follow_current_file = { enabled = false },
      use_libuv_file_watcher = true,
    },
    window = {
      position = "right",
      mappings = {
        ["<2-LeftMouse>"] = "open_with_window_picker",
        ["<cr>"] = "open_with_window_picker",
      },
    },
  },
}
