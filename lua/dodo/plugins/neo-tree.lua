return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim"
	},
	opts = {
		popup_border_style = "rounded",
	},
	init = function()
		vim.g.neo_tree_remove_legacy_commands = 1
	end,
}
