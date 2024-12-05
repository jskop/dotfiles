return {
  "folke/trouble.nvim",
  opts = {},
  cmd = "Trouble",
  keys = {
    {
      "<C-t><C-t>",
      "<cmd>Trouble diagnostics toggle filter.buf=0<CR>",
      desc = "Buffer Diagnostics (Trouble)",
    },
    {
      "<C-t><C-g>",
      "<cmd>Trouble diagnostics toggle<CR>",
      desc = "Diagnostics (Trouble)"
    },
    {
      "<C-T><C-r>",
      "<cmd>Trouble lsp toggle focus=false win.position=right<CR>",
      desc = "LSP definitions / references / ... (Trouble)",
    },
    {
      "<C-t><C-q>",
      "<cmd>Trouble qflist toggle<CR>",
      desc = "Quickfix List (Trouble)",
    },
    {
      "<C-t><C-s>",
      "<cmd>Trouble symbols toggle focus=false<cr>",
      desc = "Symbols (Trouble)",
    },
    {
      "<C-t><C-l>",
      "<cmd>Trouble loclist toggle<CR>",
      desc = "Location list (Trouble)",
    },
  },
}
