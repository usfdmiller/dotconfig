return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "go",
                "python",
                "terraform",
                "markdown",
                "markdown_inline",
                "lua",
                "vim",
                "vimdoc",
                "query",
                "javascript",
                "html"
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end
}
