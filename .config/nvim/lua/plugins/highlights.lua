return {
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      -- Apply custom highlights after colorscheme loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          -- Set inlay hint colors to be more visible
          vim.api.nvim_set_hl(0, "LspInlayHint", {
            fg = "#6e6e6e",
            bg = "NONE",
            italic = true,
          })

          -- Set comment colors to be more visible
          vim.api.nvim_set_hl(0, "Comment", {
            fg = "#888888",
            italic = true,
          })

          -- Neo-tree git status colors
          vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#888888" })
          vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#78a9ff" })
          vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#42be65" })
          vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#ffab91" })
          vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = "#ee5396" })
          vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#888888" })
          vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#888888" })
        end,
      })

      -- Also apply immediately for current session
      vim.api.nvim_set_hl(0, "LspInlayHint", { fg = "#6e6e6e", bg = "NONE", italic = true })
      vim.api.nvim_set_hl(0, "Comment", { fg = "#888888", italic = true })
      vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#888888" })
      vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#78a9ff" })
      vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#42be65" })
      vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#ffab91" })
      vim.api.nvim_set_hl(0, "NeoTreeGitUnstaged", { fg = "#ee5396" })
      vim.api.nvim_set_hl(0, "NeoTreeDimText", { fg = "#888888" })
      vim.api.nvim_set_hl(0, "NeoTreeDotfile", { fg = "#888888" })
    end,
  },
}
