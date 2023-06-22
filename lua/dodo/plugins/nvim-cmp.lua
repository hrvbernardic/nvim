return {
	'hrsh7th/nvim-cmp',
	dependencies = {
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-nvim-lsp',
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		'rafamadriz/friendly-snippets',
	},
	config = function()
		vim.opt.completeopt = 'menu,menuone,noselect'

		local cmp = require('cmp')
		local cmp_autopairs = require('nvim-autopairs.completion.cmp')
		local luasnip = require('luasnip')

		cmp.setup({
			snippet = {
				expand = function(args)
					luasnip.lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
    		["<C-Space>"] = cmp.mapping.complete(), -- show completion suggestions
    		["<C-e>"] = cmp.mapping.abort(), -- close completion window
    		["<CR>"] = cmp.mapping.confirm({ select = true }),
  		}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp'},
				{ name = "luasnip" },
				{ name = 'path' },
				{ name = 'buffer' },
			})
		})

		-- insert `(` after select function or method item
		cmp.event:on(
			'confirm_done',
			cmp_autopairs.on_confirm_done()
		)
	end
}
