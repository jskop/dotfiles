local configs = require("nvim-treesitter.configs")
configs.setup({
  ensure_installed = { "c", "cpp", "css", "json", "markdown", "typescript", "lua", "vim", "vimdoc", "query", "elixir", "javascript", "html", "go", "rust" },
  sync_install = false,
  highlight = { enable = true },
  indent = { emanle = true },
})

