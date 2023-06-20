-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-------------
-- PLUGINS --
-------------

-- Neotree
keymap.set("n", "<leader>e", ":Neotree focus toggle left<CR>")

