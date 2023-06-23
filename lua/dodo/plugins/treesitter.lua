return {
	{
		"nvim-treesitter/nvim-treesitter",
		dependencies = {
			{ "elgiano/nvim-treesitter-angular", branch = "topic/jsx-fix" }
		},
		build = ':TSUpdate',
		event = "BufReadPost",
		opts = {
			 -- A list of parser names, or "all"
				ensure_installed = {
						"javascript",
						"typescript",
						"lua",
						"html",
						"markdown",
						"markdown_inline",
						"tsx",
						"json",
						"css"
				},
				-- Install parsers synchronously (only applied to `ensure_installed`)
				sync_install = false,
				-- Automatically install missing parsers when entering buffer
				-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
				auto_install = true,
				highlight = {
						-- `false` will disable the whole extension
						enable = true,
						-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
						-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
						-- Using this option may slow down your editor, and you may see some duplicate highlights.
						-- Instead of true it can also be a list of languages
						additional_vim_regex_highlighting = false,
				},
				indent = {
						enable = true
				},
				autotag = {
						enable = true
				}
		},
		config = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				---@type table<string, boolean>
				local added = {}
				opts.ensure_installed = vim.tbl_filter(function(lang)
					if added[lang] then
						return false
					end
					added[lang] = true
					return true
				end, opts.ensure_installed)
			end
			require("nvim-treesitter.configs").setup(opts)
		end
	},
}
