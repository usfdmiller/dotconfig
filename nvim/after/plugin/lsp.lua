local lsp = require("lsp-zero").preset({
    manage_nvim_cmp = {
        set_sources = 'recommended'
    }
})

lsp.ensure_installed({
    'marksman',
    'lua_ls',
    'gopls',
    'tflint',
    'terraformls',
    'pyright',
})

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
end)

require('lspconfig').terraformls.setup({})
require('lspconfig').tflint.setup({})

require('lspconfig').gopls.setup({
    settings = {
        gopls = {
            analyses = {
                nilness = true,
                unusedparams = true,
                unusedvariable = true,
                unusedwrite = true,
                useany = true,
            },
            experimentalPostfixCompletions = true,
            gofumpt = true,
            usePlaceholders = true,
            hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
            }
        }
    }
})

require('lspconfig').pyright.setup({
    python = {
        analysis = {
            autoSearchPaths = true,
            diagnosticMode = "workspace",
            useLibraryCodeForTypes = true
        }
    }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require("cmp")

cmp.setup({
    mapping = {
        -- `Enter` key to comfirm completiong
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }
})
