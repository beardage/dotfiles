-- local keymap = require("beardage.lib.utils").keymap
-- local dap = require("dap")
-- if not dap then
-- 	return
-- end

-- local mason_dap = require("mason-nvim-dap")
-- if not mason_dap then
-- 	return
-- end

-- mason_dap.setup({
-- 	ensure_installed = {
-- 		"chrome",
-- 		"node2",
-- 		"firefox",
-- 	},
-- 	automatic_installation = true,
-- })

-- -- Adapters: Node and TypeScript
-- dap.adapters.node2 = {
-- 	type = "executable",
-- 	command = "node",
-- 	args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/node-debug2-adapter/out/src/nodeDebug.js" },
-- }

-- -- Adapters: Chrome
-- dap.adapters.chrome = {
-- 	type = "executable",
-- 	command = "node",
-- 	args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
-- }

-- -- Adapters: firefox
-- dap.adapters.firefox = {
-- 	type = "executable",
-- 	command = "node",
-- 	args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/firefox-debug-adapter/dist/adapter.bundle.js" },
-- }

-- dap.configurations.javascript = {
-- 	{
-- 		type = "node2",
-- 		request = "launch",
-- 		program = "${file}",
-- 		cwd = vim.fn.getcwd(),
-- 		sourceMaps = true,
-- 		protocol = "inspector",
-- 		console = "integratedTerminal",
-- 	},
-- }

-- dap.configurations.javascript = {
-- 	{
-- 		name = "Debug with Firefox",
-- 		type = "firefox",
-- 		request = "launch",
-- 		reAttach = true,
-- 		webRoot = "${workspaceFolder}",
-- 		url = "http://localhost:3000",
-- 		firefoxExecutable = "/home/kyle/.local/opt/firefox/firefox",
-- 	},
-- }

-- dap.configurations.javascriptreact = {
-- 	{
-- 		name = "Debug with Firefox",
-- 		type = "firefox",
-- 		request = "launch",
-- 		reAttach = true,
-- 		webRoot = "${workspaceFolder}",
-- 		url = "http://localhost:3000",
-- 		firefoxExecutable = "/home/kyle/.local/opt/firefox/firefox",
-- 	},
-- }

-- dap.configurations.typescriptreact = {
-- 	{
-- 		name = "Debug with Firefox",
-- 		type = "firefox",
-- 		request = "launch",
-- 		reAttach = true,
-- 		webRoot = "${workspaceFolder}",
-- 		url = "http://localhost:3000",
-- 		firefoxExecutable = "/home/kyle/.local/opt/firefox/firefox",
-- 	},
-- }

-- keymap("n", "<leader>dc", "[[<cmd>lua require('dap').continue()<CR>]]")
-- keymap("n", "<leader><Right>", "[[<cmd>lua require('dap').step_over()<CR>]]")
-- keymap("n", "<leader><Down>", "[[<cmd>lua require('dap').step_into()<CR>]]")
-- keymap("n", "<leader><Up>", "[[<cmd>lua require('dap').step_out()<CR>]]")
-- keymap("n", "<leader>b", [[<cmd>lua require('dap').toggle_breakpoint()<CR>]])
-- keymap("n", "<leader>B", [[<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]])
-- keymap("n", "<leader>lp", [[<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>]])
-- keymap("n", "<leader>dr", [[<cmd>lua require('dap').repl.open()<CR>]])
-- keymap("n", "<leader>do", [[<cmd>lua require('dapui').open()<CR>]])
-- keymap("n", "<leader>dq", [[<cmd>lua require('dapui').close()<CR>]])

-- vim.fn.sign_define("DapBreakpoint", { text = "🛑", texthl = "", linehl = "", numhl = "" })
-- -- dap.set_log_level("TRACE")
