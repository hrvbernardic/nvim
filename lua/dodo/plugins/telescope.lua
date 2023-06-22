return {
	'nvim-telescope/telescope.nvim',
	tag = '0.1.1',
	dependencies = {
		{ 'nvim-lua/plenary.nvim' },
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	opts = {
		defaults = {
			file_ignore_patterns = { "pnpm-lock.yaml", "yarn.lock", "package-lock.json" },
		},
		extensions = {
			fzf = {
				fuzzy = true,                    -- false will only do exact matching
				override_generic_sorter = true,  -- override the generic sorter
				override_file_sorter = true,     -- override the file sorter
			}
		}
	},
	init = function ()
		require('telescope').load_extension('fzf')
	end
}
