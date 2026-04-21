-- Neo-tree configuration (disable snacks explorer)
return {
  -- Disable snacks explorer but keep dashboard
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      opts.explorer = opts.explorer or {}
      opts.explorer.enabled = false
      return opts
    end,
    keys = {
      { "<leader>e", false },
      { "<leader>E", false },
    },
  },

  -- Enable and configure neo-tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = true,
    cmd = "Neotree",
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<cr>", desc = "Toggle Neo-tree" },
    },
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
          hide_gitignored = false,
        },
        hijack_netrw_behavior = "disabled",
      },
      window = {
        mappings = {
          ["h"] = "close_node",
          ["l"] = "open",
        },
      },
    },
  },
}
