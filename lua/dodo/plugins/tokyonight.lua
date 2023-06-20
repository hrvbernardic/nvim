return {
	"folke/tokyonight.nvim",
	lazy = false,
	priority = 1000,
	init = function()
		vim.cmd.colorscheme 'tokyonight'
	end,
	config = function()
		require("tokyonight").setup({
  			style = "moon",
		})
	end,
	opts = {},
}
