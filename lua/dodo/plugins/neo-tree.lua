return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v2.x",
	init = function() 
		vim.g.neo_tree_remove_legacy_commands = 1 
	end,
	opts = {
		popup_border_style = "rounded",
	},
	dependencies = {
  	"nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim"
	},
	config = function(_, opts)
		require("neo-tree").setup(opts)
	end
}
