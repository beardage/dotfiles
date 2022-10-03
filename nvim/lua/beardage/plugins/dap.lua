local keymap = require("beardage.lib.utils").keymap

keymap("n", "<F5>", "[[<cmd>lua require('dap').continue()<CR>]]")
keymap("n", "<F3>", "[[<cmd>lua require('dap').step_over()<CR>]]")
keymap("n", "<F2>", "[[<cmd>lua require('dap').step_into()<CR>]]")
keymap("n", "<F12>", "[[<cmd>lua require('dap').step_out()<CR>]]")
keymap("n", "<leader>b", [[<cmd>lua require('dap').toggle_breakpoint()<CR>]])
keymap("n", "<leader>B", [[<cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>]])
keymap("n", "<leader>lp", [[<cmd>lua require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: '))<CR>]])
keymap("n", "<leader>dr", [[<cmd>lua require('dap').repl.open()<CR>]])

require("dapui").setup()
require("nvim-dap-virtual-text").setup({})

-- open dapui when dap is active
local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
	dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
	dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
	dapui.close()
end

dap.adapters.firefox = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/firefox-debug-adapter/dist/adapter.bundle.js" },
}

dap.adapters.chrome = {
	type = "executable",
	command = "node",
	args = { os.getenv("HOME") .. "/.local/share/nvim/mason/packages/chrome-debug-adapter/out/src/chromeDebug.js" },
}

dap.configurations.javascriptreact = { -- change this to javascript if needed
	{
		type = "chrome",
		request = "attach",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		port = 9222,
		webRoot = "${workspaceFolder}",
	},
}

dap.configurations.typescriptreact = { -- change to typescript if needed
	{
		name = "Debug with Chrome",
		type = "chrome",
		request = "attach",
		program = "${file}",
		cwd = vim.fn.getcwd(),
		sourceMaps = true,
		protocol = "inspector",
		port = 9222,
		webRoot = "${workspaceFolder}",
	},
	{
		name = "Debug with Firefox Dev",
		type = "firefox",
		request = "launch",
		reAttach = true,
		url = "http://localhost:3000",
		webRoot = "${workspaceFolder}",
		firefoxExecutable = "/home/kyle/.local/opt/firefox/firefox",
	},
}
