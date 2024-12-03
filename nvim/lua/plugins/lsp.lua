return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      vtsls = {
        settings = {
          autoUseWorkspaceTsdk = false,
        },
      },
    },
  },
  -- function()
  --   local keys = require("lazyvim.plugins.lsp.keymaps").get()
  --   keys[#keys + 1] = { "<leader>cc", false }
  --   keys[#keys + 1] = { "<leader>cC", false }
  -- end,
}
