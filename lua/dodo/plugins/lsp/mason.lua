return {
	"williamboman/mason.nvim",
	lazy = false,
	dependencies = {
		'williamboman/mason-lspconfig.nvim'
	},
	build = ":MasonUpdate",
	config = function()
		local mason = require('mason')
		local mason_lspconfig = require('mason-lspconfig')
		mason.setup()
		mason_lspconfig.setup({
			ensure_installed = {
				'lua_ls',
				'tsserver',
				'html',
				'cssls',
				'emmet_ls',
				'angularls',
			},
			automatic_installation = true
		})
	end
}
