return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "jwalton512/vim-blade",
    lazy = false,
  },
  {
    "IogaMaster/neocord",
    event = "VeryLazy",
    config = function()
      require "configs.discord"
    end,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      require "configs.chunk"
    end,
  },
  {
    "Pocco81/auto-save.nvim",
    event = "InsertLeave",
    config = function()
      require "configs.auto-save" -- Pastikan file ini ada
    end,
  },

  -- {
  --   "williamboman/mason.nvim",
  --   opts ={
  --     ensure_installed = {
  --       "lua-language-server",
  --       "stylua",
  --       "html-lsp",
  --       "prettier",
  --       "css-lsp",
  --     },
  --   },
  -- },
  {
    "rachartier/tiny-inline-diagnostic.nvim",
    event = "VeryLazy", -- Or `LspAttach`
    priority = 1000, -- needs to be loaded in first
    config = function()
      require "configs.inline-diagnostics"
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      {
        "supermaven-inc/supermaven-nvim",
        opts = {},
      },
    },
    opts = function(_, opts)
      opts.sources[1].trigger_chars = { "-" }
      table.insert(opts.sources, 1, { name = "supermaven" })
    end,
  },
  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
