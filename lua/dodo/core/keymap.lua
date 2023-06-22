local keymap = vim.keymap


-- General

-- stupid :Q
keymap.set("n", ":Q", ":q")

-- remap save to save all
keymap.set("n", ":w", ":wa")
keymap.set("n", ":W", ":wa")

-- use :e to undo all changnes made to file
keymap.set("n", ":e", ":e!")
keymap.set("n", ":E", ":e!")

-- delete single character without copying into register
keymap.set("n", "<leader>x", "_x")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- move lines in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- tabs management
keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

-------------
-- PLUGINS --
-------------

-- Neotree
keymap.set("n", "<leader>e", ":Neotree focus toggle left<CR>")
keymap.set("n", "<leader>E", ":Neotree focus<CR>")

-- Telescope
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, {})
keymap.set('n', '<leader>fs', builtin.live_grep, {})
keymap.set('n', '<leader>fb', builtin.buffers, {})
keymap.set('n', '<leader>fh', builtin.help_tags, {})
