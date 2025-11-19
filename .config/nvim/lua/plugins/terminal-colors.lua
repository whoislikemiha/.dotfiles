-- Set terminal colors to match kitty oxocarbon theme
return {
  {
    "LazyVim/LazyVim",
    opts = function()
      -- Apply terminal colors after colorscheme loads
      vim.api.nvim_create_autocmd("ColorScheme", {
        group = vim.api.nvim_create_augroup("terminal_colors", { clear = true }),
        callback = function()
          -- Set terminal colors to match kitty oxocarbon theme
          vim.g.terminal_color_0 = "#161616"  -- black
          vim.g.terminal_color_1 = "#ee5396"  -- red
          vim.g.terminal_color_2 = "#42be65"  -- green
          vim.g.terminal_color_3 = "#ffe97b"  -- yellow
          vim.g.terminal_color_4 = "#33b1ff"  -- blue
          vim.g.terminal_color_5 = "#be95ff"  -- magenta
          vim.g.terminal_color_6 = "#3ddbd9"  -- cyan
          vim.g.terminal_color_7 = "#dde1e6"  -- white

          -- Bright colors
          vim.g.terminal_color_8 = "#525252"  -- bright black
          vim.g.terminal_color_9 = "#ff7eb6"  -- bright red
          vim.g.terminal_color_10 = "#08bdba" -- bright green
          vim.g.terminal_color_11 = "#f1c21b" -- bright yellow
          vim.g.terminal_color_12 = "#78a9ff" -- bright blue
          vim.g.terminal_color_13 = "#d0a9f5" -- bright magenta
          vim.g.terminal_color_14 = "#82cfff" -- bright cyan
          vim.g.terminal_color_15 = "#f2f4f8" -- bright white
        end,
      })

      -- Also set them immediately
      vim.g.terminal_color_0 = "#161616"
      vim.g.terminal_color_1 = "#ee5396"
      vim.g.terminal_color_2 = "#42be65"
      vim.g.terminal_color_3 = "#ffe97b"
      vim.g.terminal_color_4 = "#33b1ff"
      vim.g.terminal_color_5 = "#be95ff"
      vim.g.terminal_color_6 = "#3ddbd9"
      vim.g.terminal_color_7 = "#dde1e6"
      vim.g.terminal_color_8 = "#525252"
      vim.g.terminal_color_9 = "#ff7eb6"
      vim.g.terminal_color_10 = "#08bdba"
      vim.g.terminal_color_11 = "#f1c21b"
      vim.g.terminal_color_12 = "#78a9ff"
      vim.g.terminal_color_13 = "#d0a9f5"
      vim.g.terminal_color_14 = "#82cfff"
      vim.g.terminal_color_15 = "#f2f4f8"
    end,
  },
}
