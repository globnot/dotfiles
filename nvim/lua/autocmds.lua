require "nvchad.autocmds"

-- Forcer les fichiers .h à être reconnus comme du C
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = "*.h",
  callback = function()
    vim.bo.filetype = "c"
  end,
})
