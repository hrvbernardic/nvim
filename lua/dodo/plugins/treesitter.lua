return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			{ "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" }
		},
		build = ':TSUpdate',
		event = "BufReadPost",
		opts = {
			-- enable syntax highlighting
			highlight = {
				enable = true,
			},
			-- enable indentation
			indent = { enable = true },
			-- ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"scss",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
			},
			-- auto install above language parsers
			auto_install = true,
		},
	},
}
