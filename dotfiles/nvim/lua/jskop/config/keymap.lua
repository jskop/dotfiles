local km = vim.keymap
vim.g.mapleader = " "
-- Save
km.set("i", "<C-S><C-S>", "<ESC>:w<CR>", { desc = "Save" })
km.set("n", "<C-S><C-S>", ":w<CR>", { desc = "Save" })
km.set("i", "<C-S><C-Q>", "<ESC>:wq<CR>", { desc = "Save and close" })
km.set("n", "<C-S><C-Q>", ":wq<CR>", { desc = "Save and close" })
-- Quit
km.set("i", "<C-x><C-x>", "<ESC>:wqa<CR>", { desc = "Quit with saving" })
km.set("n", "<C-x><C-x>", ":wqa<CR>", { desc = "Quit with saving" })
km.set("n", "<C-S-x>", ":qa<CR>", { desc = "Close" })
-- Close buffer
km.set("i", "<C-S-x>", "<ESC>:q<CR>", { desc = "Close current buffer" })
-- Explorer
km.set({"n","i"}, "<C-e>", "<ESC>:Neotree<CR>", { desc = "Open explorer" })
