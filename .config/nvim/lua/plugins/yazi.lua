return {
    "DreamMaoMao/yazi.nvim",
    dependencies = {
        "nvim-telescope/telescope.nvim",
        "nvim-lua/plenary.nvim",
    },
    keys = {
        { "<leader>y", "<cmd>Yazi<CR>", desc = "Toggle Yazi" },
    },
    -- Optional: Configure yazi.nvim if needed
    -- config = function()
    --   require("yazi").setup({
    --     -- Your Yazi configuration options here
    --   })
    -- end,
}
