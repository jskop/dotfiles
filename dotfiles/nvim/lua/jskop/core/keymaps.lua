vim.g.mapleader = " "

local km = vim.keymap

km.set("i", "<C-s>", "<ESC>:w<CR>", { desc = "Save file in insert mode" })
km.set("n", "<C-e>", ":Ex<CR>", { desc = "Open explorer" })
km.set("n", "<C-A-n>h", ":nohl<CR>", { desc = "Clear search highlights" })
km.set("n", "<C-q>", ":q!<CR>", { desc = "Quit" })
km.set("i", "<C-q>", "<ESC>:q!<CR>", { desc = "Quit without saving" })
km.set("n", "<C-S-i>", "<C-a>", { desc = "Increment number" })
km.set("n", "<C-S-d>", "<C-x>", { desc = "Increment number" })

km.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
km.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
km.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
km.set("n", "<leader>sx", ":close<CR>", { desc = "Close current split" })

km.set("n", "<leader>to", ":tabnew<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tx", ":tabclose<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tn", ":tabn<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tp", ":tabp<CR>", { desc = "Open new tab" })
km.set("n", "<leader>tf", ":tabnew %<CR>", { desc = "Open new tab" })
