return {
    "VonHeikemen/lsp-zero.nvim",
    branch = "v3.x",
    dependencies = {
        -- LSP Support
        { "neovim/nvim-lspconfig" },             -- Required
        { "williamboman/mason.nvim" },           -- Optional
        { "williamboman/mason-lspconfig.nvim" }, -- Optional

        -- Autocompletion
        { "hrsh7th/nvim-cmp" }, -- Required
        { "hrsh7th/cmp-buffer" },
        { "hrsh7th/cmp-path" },
        { "saadparwaiz1/cmp_luasnip" },
        { "hrsh7th/cmp-nvim-lsp" }, -- Required
        { "L3MON4D3/LuaSnip" },     -- Required
    },
    config = function()
        local lsp_zero = require("lsp-zero")

        lsp_zero.on_attach(function(client, bufnr)
            -- see :help lsp-zero-keybindings
            -- to learn the available actions
            lsp_zero.default_keymaps({ buffer = bufnr })
        end)

        require("mason").setup({})
        require("mason-lspconfig").setup({
            ensure_installed = {
                "terraformls",
                "tflint",
                "html",
                "css",
                "svelte",
                "tsserver",
                "marksman",
                "pylsp",
                "gopls"
            },
            handlers = {
                lsp_zero.default_setup,
                lua_ls = function()
                    local lua_opts = lsp_zero.nvim_lua_ls()
                    require("lspconfig").lua_ls.setup(lua_opts)
                end,
            }
        })

        local cmp = require("cmp")
        local cmp_format = lsp_zero.cmp_format()

        cmp.setup({
            formatting = cmp_format,
            sources = {
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "path" },
                { name = "buffer" },
            },
            window = {
                completion = cmp.config.window.bordered(),
                documentation = cmp.config.window.bordered(),
            },
            mapping = cmp.mapping.preset.insert({
                -- `Enter` key to comfirm completiong
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
            }),
        })
    end
}
