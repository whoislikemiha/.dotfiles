return {
  {
    "LazyVim/LazyVim",
    keys = {
      {
        "<leader>tr",
        function()
          -- Toggle transparency state
          vim.g.transparency_enabled = not vim.g.transparency_enabled

          if vim.g.transparency_enabled then
            -- Apply transparency
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "Pmenu", { bg = "none" })
            vim.api.nvim_set_hl(0, "Terminal", { bg = "none" })
            vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })
            vim.api.nvim_set_hl(0, "FoldColumn", { bg = "none" })
            vim.api.nvim_set_hl(0, "Folded", { bg = "none" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
            vim.api.nvim_set_hl(0, "WhichKeyFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
            vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyINFOBody", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyERRORBody", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyWARNBody", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyTRACEBody", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyINFOTitle", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyERRORTitle", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyWARNTitle", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyTRACETitle", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyINFOBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyERRORBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyWARNBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { bg = "none" })
            vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { bg = "none" })
            print("Transparency enabled")
          else
            -- Reload colorscheme to restore backgrounds
            -- Reload current colorscheme to restore backgrounds
            local current_colorscheme = vim.g.colors_name or "oxocarbon"
            vim.cmd("colorscheme " .. current_colorscheme)
            print("Transparency disabled")
          end
        end,
        desc = "Toggle Transparency",
      },
    },
    init = function()
      -- Start with transparency disabled
      vim.g.transparency_enabled = false
    end,
  },
}
