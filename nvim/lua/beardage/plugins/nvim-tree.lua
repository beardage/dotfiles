require("nvim-tree").setup({
	auto_reload_on_write = true,
	disable_netrw = false,
	hijack_cursor = false,
	hijack_netrw = true,
	hijack_unnamed_buffer_when_opening = false,
	open_on_tab = false,
	sort_by = "name",
	update_cwd = false,
	reload_on_bufenter = false,
	view = {
		side = "right",
		preserve_window_proportions = false,
		number = false,
		relativenumber = false,
		signcolumn = "yes",
	},
	renderer = {
		indent_markers = {
			enable = true,
			icons = {
				corner = "└ ",
				edge = "│ ",
				none = "  ",
			},
		},
		icons = {
			webdev_colors = true,
			git_placement = "before",
		},
	},
	hijack_directories = {
		enable = true,
		auto_open = true,
	},
	update_focused_file = {
		enable = false,
		update_cwd = false,
		ignore_list = { "COMMIT_EDITMSG" },
	},
	system_open = {
		cmd = "",
		args = {},
	},
	diagnostics = {
		enable = false,
		show_on_dirs = false,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	filters = {
		dotfiles = false,
		custom = {},
		exclude = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 400,
	},
	actions = {
		use_system_clipboard = true,
		change_dir = {
			enable = true,
			global = false,
			restrict_above_cwd = false,
		},
		open_file = {
			quit_on_open = false,
			resize_window = true,
			window_picker = {
				enable = true,
				chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
				exclude = {
					filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame" },
					buftype = { "nofile", "terminal", "help" },
				},
			},
		},
	},
	trash = {
		cmd = "trash",
		require_confirm = true,
	},
	live_filter = {
		prefix = "[FILTER]: ",
		always_show_folders = true,
	},
	log = {
		enable = false,
		truncate = false,
		types = {
			all = false,
			config = false,
			copy_paste = false,
			diagnostics = false,
			git = false,
			profile = false,
		},
	},
})

vim.cmd([[
  highlight NvimTreeFolderIcon guibg=NONE
  highlight NvimTreeNormal guibg=NONE
  highlight NvimTreeIndentMarker guifg=#30323E
  augroup NvimTreeHighlights
    autocmd ColorScheme * highlight NvimTreeIndentMarker guifg=#30323E
  augroup end
]])

vim.api.nvim_set_keymap("n", "<leader>n", ":NvimTreeFindFileToggle<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>nr", ":NvimTreeRefresh<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tff", ":NvimTreeFindFile<CR>", { silent = true, noremap = true })
vim.api.nvim_set_keymap("n", "<leader>tf", ":NvimTreeFocus<CR>", { silent = true, noremap = true })
