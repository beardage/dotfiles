return {
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { "mason-org/mason.nvim", opts = {} },
      "neovim/nvim-lspconfig",
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        eslint = {
          settings = {
            -- auto-detect working directories per-package (critical for firebase monorepo)
            workingDirectories = { mode = "auto" },
          },
        },
        vtsls = {
          settings = {
            typescript = {
              tsdk = nil, -- use workspace tsdk when available
            },
          },
        },
      },
    },
  },
}
