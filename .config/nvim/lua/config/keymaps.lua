-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Leader key shortcuts for write and quit
vim.keymap.set("n", "<leader>w", "<cmd>w<cr>", { desc = "Save file" })
vim.keymap.set("n", "<leader>q", function() Snacks.bufdelete() end, { desc = "Delete buffer" })
vim.keymap.set("n", "<leader>Q", "<cmd>qa<cr>", { desc = "Quit Neovim" })

-- Comment toggle with Ctrl+/
vim.keymap.set("n", "<C-/>", "gcc", { desc = "Toggle comment", remap = true })
vim.keymap.set("v", "<C-/>", "gc", { desc = "Toggle comment", remap = true })
