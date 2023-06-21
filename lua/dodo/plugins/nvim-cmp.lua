return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
	},
	config = function()
		vim.opt.completeopt = 'menu,menuone,noselect'
		local cmp = require('cmp')
		cmp.setup({
			mapping = cmp.mapping.preset.insert({
    		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    		["<C-e>"] = cmp.mapping.abort(), -- close completion window
    		["<CR>"] = cmp.mapping.confirm({ select = false }),
  		}),
			sources = cmp.config.sources({
				{ name = 'path' },
				{ name = 'buffer' },
			})
		})
	end
}
