return {
  "nvim-treesitter/nvim-treesitter",
  events = {
    "BufReadPre",
    "BufNewFile",
  },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    treesitter.setup({
      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
        "json",
        "markdown",
        "typescript",
        "javascript",
        "tsx",
        "yaml",
        "html",
        "css",
        "markdown_inline",
        "prisma",
        "lua",
        "dockerfile",
        "gitignore",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "C-space",
          scope_incremental = false,
          node_decremental = "<bs>"
        }
      }
    })
  end
}
