return {
  "folke/persistence.nvim",
  event = "VimEnter",
  opts = {
    branch = false,
    -- Enable to autoload session on startup, unless:
    -- * neovim was started with files as arguments
    -- * stdin has been provided
    -- * git commit/rebase session
    autoload = true,
  },
  keys = {
    {
      "<leader>qs",
      function()
        require("persistence").load()
      end,
      desc = "Restore Session",
    },
    {
      "<leader>ql",
      function()
        require("persistence").load({ last = true })
      end,
      desc = "Restore Last Session",
    },
    {
      "<leader>qd",
      function()
        require("persistence").stop()
      end,
      desc = "Don't Save Current Session",
    },
  },
  init = function()
    -- Detect if stdin has been provided.
    vim.g.started_with_stdin = false
    vim.api.nvim_create_autocmd("StdinReadPre", {
      group = vim.api.nvim_create_augroup("rafi_persistence", {}),
      callback = function()
        vim.g.started_with_stdin = true
      end,
    })
    -- Autoload session on startup.
    local disabled_dirs = {
      vim.env.TMPDIR or "/tmp",
      "/private/tmp",
    }
    vim.api.nvim_create_autocmd("VimEnter", {
      group = "rafi_persistence",
      once = true,
      nested = true,
      callback = function()
        local opts = LazyVim.opts("persistence.nvim")
        if not opts.autoload then
          return
        end
        local cwd = vim.uv.cwd() or vim.fn.getcwd()
        if cwd == nil or vim.fn.argc() > 0 or vim.g.started_with_stdin or vim.env.GIT_EXEC_PATH ~= nil then
          require("persistence").stop()
          return
        end
        for _, path in pairs(disabled_dirs) do
          if cwd:sub(1, #path) == path then
            require("persistence").stop()
            return
          end
        end
        -- Close all floats before loading a session. (e.g. Lazy.nvim)
        for _, win in pairs(vim.api.nvim_tabpage_list_wins(0)) do
          if vim.api.nvim_win_get_config(win).zindex then
            vim.api.nvim_win_close(win, false)
          end
        end
        require("persistence").load()
      end,
    })
  end,
}
