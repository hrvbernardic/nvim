return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	init = function() 
		vim.g.neo_tree_remove_legacy_commands = 1 
	end,
	dependencies = {
      		"nvim-lua/plenary.nvim",
      		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      		"MunifTanjim/nui.nvim"
	},
	config = function()
		require("neo-tree").setup({
			popup_border_style = "rounded",
		})

	end
}
