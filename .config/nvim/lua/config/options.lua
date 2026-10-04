require("config.remote_clipboard").setup()
-- Options are automatically loaded before lazy.nvim startup
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Disable netrw
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Disable relative line numbers (keep your preference)
vim.opt.relativenumber = false

-- Wrap long lines instead of scrolling the view horizontally
vim.opt.wrap = true
vim.opt.linebreak = true -- wrap at word boundaries, not mid-word
vim.opt.breakindent = true -- keep wrapped lines aligned with indentation
vim.opt.sidescrolloff = 0
