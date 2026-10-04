return {
  {
    "LazyVim/LazyVim",
    opts = function(_, opts)
      -- Pure black background to match the terminal (oxocarbon default is #161616)
      local function apply_black_bg()
        for _, group in ipairs({
          "Normal", "NormalNC", "NormalSB", "EndOfBuffer", "SignColumn", "LineNr",
          "CursorLineNr", "FoldColumn", "NeoTreeNormal", "NeoTreeNormalNC",
          "NeoTreeEndOfBuffer", "SnacksNormal", "SnacksNormalNC",
        }) do
          local hl = vim.api.nvim_get_hl(0, { name = group, link = false })
          hl.bg = "#000000"
          vim.api.nvim_set_hl(0, group, hl)
        end
      end

      -- Apply custom highlights after colorscheme loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "*",
        callback = function()
          apply_black_bg()
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
      apply_black_bg()
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
