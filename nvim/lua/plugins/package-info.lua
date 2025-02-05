return {
  "vuki656/package-info.nvim",
  dependencies = { "MunifTanjim/nui.nvim" },
  opts = {
    colors = {
      up_to_date = "#047857",
      outdated = "#A16207",
    },
  },
  config = function(_, opts)
    require("package-info").setup(opts)
    vim.cmd([[highlight PackageInfoUpToDateVersion guifg=]] .. opts.colors.up_to_date)
    vim.cmd([[highlight PackageInfoOutdatedVersion guifg=]] .. opts.colors.outdated)
  end,
  ft = "json",
  keys = function()
    return {
      {
        "<leader>uv",
        function()
          require("package-info").toggle()
        end,
        desc = "Package Versions",
      },
      {
        "<leader>uV",
        function()
          require("package-info").toggle({ force = true })
        end,
        desc = "Package Versions (force refresh)",
      },
    }
  end,
}
