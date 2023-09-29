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
                "typescript",
                "svelte",
                "html",
                "css",
                "yaml",
            },
            sync_install = false,
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = false },
        })
    end
}
