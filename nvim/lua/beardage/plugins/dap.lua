local keymap = require("beardage.lib.utils").keymap

keymap("n", "<F5>", "[[<cmd>lua require('dap').continue()<CR>]]")
keymap("n", "<F3>", "[[<cmd>lua require('dap').step_over()<CR>]]")
keymap("n", "<F2>", "[[<cmd>lua require('dap').step_into()<CR>]]")
keymap("n", "<F12>", "[[<cmd>lua require('dap').step_out()<CR>]]")
keymap("n", "<leader>b", [[<cmd>lua require('dap').toggle_breakpoint()<CR>]])
keymap("n", "<leader>B", [[<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]])
keymap("n", "<leader>lp", [[<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>]])
keymap("n", "<leader>lp", [[<cmd>lua require('dap').repl.open()<CR>]])
keymap("n", "<leader>lp", [[<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>]])
