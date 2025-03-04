vim.api.nvim_create_autocmd("TermOpen", {
  pattern = "*",
  callback = function()
    vim.opt_local.signcolumn = "no" -- Hilangkan sign column di terminal
    vim.opt_local.number = false -- Hilangkan nomor baris
    vim.opt_local.relativenumber = false -- Hilangkan relative number
  end,
})
