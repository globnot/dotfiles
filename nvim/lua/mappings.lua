require "nvchad.mappings"

-- add yours here
--
-- Copier dans le presse-papiers système
vim.keymap.set('n', 'y', '"+y', { noremap = true, silent = true })
vim.keymap.set('n', 'yy', '"+yy', { noremap = true, silent = true })
vim.keymap.set('v', 'y', '"+y', { noremap = true, silent = true })
-- Couper dans le presse-papiers système
vim.keymap.set('n', 'd', '"+d', { noremap = true, silent = true })
vim.keymap.set('n', 'dd', '"+dd', { noremap = true, silent = true })
vim.keymap.set('v', 'd', '"+d', { noremap = true, silent = true })

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("t", "<Esc>", [[<C-\><C-n>]], { desc = "Terminal mode: exit to normal mode" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
