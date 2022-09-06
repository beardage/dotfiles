local keymap = require('beardage.lib.utils').keymap

require('smart-splits').setup({
    -- Ignored filetypes (only while resizing)
    ignored_filetypes = {
        'nofile',
        'quickfix',
        'prompt',
    },
    -- Ignored buffer types (only while resizing)
    ignored_buftypes = { 'NvimTree' },
    -- when moving cursor between splits left or right,
    -- place the cursor on the same row of the *screen*
    -- regardless of line numbers. False by default.
    -- Can be overridden via function parameter, see Usage.
    move_cursor_same_row = false,
})

keymap('n', '<A-h>', [[<cmd>lua require('smart-splits').resize_left()<CR>]])
keymap('n', '<A-j>', [[<cmd>lua require('smart-splits').resize_down()<CR>]])
keymap('n', '<A-k>', [[<cmd>lua require('smart-splits').resize_up()<CR>]])
keymap('n', '<A-l>', [[<cmd>lua require('smart-splits').resize_right()<CR>]])
keymap('n', '<C-h>', [[<cmd>lua require('smart-splits').move_cursor_left()<CR>]])
keymap('n', '<C-j>', [[<cmd>lua require('smart-splits').move_cursor_down()<CR>]])
keymap('n', '<C-k>', [[<cmd>lua require('smart-splits').move_cursor_up()<CR>]])
keymap('n', '<C-l>', [[<cmd>lua require('smart-splits').move_cursor_right()<CR>]])

