return {
  { "beardage/orlock.nvim" },
  {
    "LazyVim/LazyVim",
    init = function()
      vim.g.orlock_transparent_bg = true
      vim.g.termguicolors = true
    end,
    opts = {
      colorscheme = "orlock",
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
}
