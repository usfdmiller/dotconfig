return {
    "NeogitOrg/neogit",
    dependencies = {
        "nvim-lua/plenary.nvim", -- required
        "sindrets/diffview.nvim"
    },
    enabled = false,
    keys = {
        { "<leader>ng", "<Cmd>Neogit<CR>" }
    },
    config = function()
        require("neogit").setup({
            integrations = {
                diffview = true
            }
        })
    end
}
