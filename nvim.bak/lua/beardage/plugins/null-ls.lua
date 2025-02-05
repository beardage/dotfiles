local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
null_ls.setup({
	debug = false,
	root_dir = require("null-ls.utils").root_pattern(".git", "package.json"),
	sources = {
		null_ls.builtins.formatting.stylua,
		require("none-ls.formatting.eslint_d"),
		-- null-ls.builtins.formatting.prettier_d_slim,
		require("none-ls.diagnostics.eslint_d"),
	},
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})
		end
	end,
})
