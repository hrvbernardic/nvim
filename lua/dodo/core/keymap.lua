local keymap = vim.keymap

-------------
-- PLUGINS --
-------------

-- Neotree
keymap.set("n", "<leader>e", ":Neotree focus toggle left<CR>")

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fg', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
