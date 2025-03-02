-- local options = {
--   formatters_by_ft = {
--     lua = { "stylua" },
--     py = {"black"},
--     python = {"black"},
--     css = { "prettier" },
--     html = { "prettier" },
--   },
--
--   format_on_save = {
--     -- These options will be passed to conform.format()
--     timeout_ms = 500,
--     lsp_fallback = true,
--   },
-- }
--
-- --require("conform").setup(options)
-- return options
local conform = require("conform")

conform.setup({
  formatters_by_ft = {
    lua = { "stylua" },
    python = { "black" },
    css = { "prettier" },
    html = { "prettier" },
  },

  format_on_save = {
    -- Opsi format saat save
    timeout_ms = 500,
    lsp_fallback = true,
  },
})

-- Jalankan autoformat sebelum save
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    conform.format({ async = false, lsp_fallback = true })
  end,
})

