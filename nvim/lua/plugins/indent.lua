return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
        indent = { char = "│" },
        scope = {
            enabled = true,
            char = "│",
            include = {
                node_type = {
                }
            }
        },
        exclude = {
            filetypes = {
                "help",
                "alpha",
                "dashboard",
                "neo-tree",
                "Trouble",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "lazyterm",
            },
        },
    }
}
