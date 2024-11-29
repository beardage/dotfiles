local keymap = require('lib.utils').keymap

require('telescope').setup{
  defaults = {
    -- Default configuration for telescope goes here:
    -- config_key = value,
    mappings = {
      i = {
        -- map actions.which_key to <C-h> (default: <C-/>)
        -- actions.which_key shows the mappings for your picker,
        -- e.g. git_{create, delete, ...}_branch for the git_branches picker
        ["<C-h>"] = "which_key",
        ["<C-d>"] = "delete_buffer",
        ["<C-Down>"] = "preview_scrolling_down",
        ["<C-Up>"] = "preview_scrolling_up"
      }
    }
  },
  pickers = {
    find_files = {
      hidden = true,
    },
  },
  extensions = {
    -- Your extension configuration goes here:
    -- extension_name = {
    --   extension_config_key = value,
    -- }
    -- please take a look at the readme of the extension you want to configure
  }
}
require('telescope').load_extension('fzf')
require('telescope').load_extension('live_grep_args')

keymap('n', '<leader>ff', [[<cmd>lua require('telescope.builtin').find_files()<CR>]])
keymap('n', '<leader>fF', [[<cmd>lua require('telescope.builtin').find_files({ no_ignore = true, prompt_title = 'All Files' })<CR>]]) -- luacheck: no max line length
keymap('n', '<leader>fb', [[<cmd>lua require('telescope.builtin').buffers()<CR>]])
keymap('n', '<leader>fg', [[<cmd>lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>]])
keymap('n', '<leader>fh', [[<cmd>lua require('telescope.builtin').help_tags()<CR>]])
