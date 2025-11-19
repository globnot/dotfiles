require "nvchad.mappings"

-- add yours here
-- Fonction Lua pour redimensionner nvim-tree
_G.resize_nvim_tree = function(delta)
    for _, win in pairs(vim.api.nvim_list_wins()) do
        local buf = vim.api.nvim_win_get_buf(win)
        if vim.bo[buf].filetype == "NvimTree" then
            local width = vim.api.nvim_win_get_width(win)
            vim.api.nvim_win_set_width(win, width + delta)
            break
        end
    end
end
-- Redimensionner nvim-tree dynamiquement
vim.api.nvim_set_keymap('n', '<leader>+', ':lua resize_nvim_tree(5)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>-', ':lua resize_nvim_tree(-5)<CR>', { noremap = true, silent = true })
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
