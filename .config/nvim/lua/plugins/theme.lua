return {
  -- Matteblack
  {
    "tahayvr/matteblack.nvim",
    lazy = true,
    priority = 1000
  },

  -- Oxocarbon - IBM Carbon inspired
  {
    "nyoom-engineering/oxocarbon.nvim",
    lazy = false,
    priority = 1000,
  },

  -- Nightfox (includes carbonfox variant)
  {
    "EdenEast/nightfox.nvim",
    lazy = true,
    priority = 1000,
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "oxocarbon",
      -- Alternative options:
      -- colorscheme = "carbonfox",
      -- colorscheme = "matteblack",
    },
  },
}
