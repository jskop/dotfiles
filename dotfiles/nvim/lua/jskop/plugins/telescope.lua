return {
    "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
     { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    telescope.setup({})
    telescope.load_extension("fzf")
    
    local km = vim.keymap
    km.set("n", "<C-f><C-f>", ":Telescope find_files<CR>", { desc = "Fuzzy find files" })
    km.set("n", "<C-f><C-r>", ":Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })
    km.set("n", "<C-f><C-s>", ":Telescope live_grep<CR>", { desc = "Find string in cwd" })
    km.set("n", "<C-f><C-t>", ":TodoTelescope<CR>", { desc = "Find todos" })

  end,
}
