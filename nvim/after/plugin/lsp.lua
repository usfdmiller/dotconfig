local lsp = require("lsp-zero").preset({})


lsp.ensure_installed({
	'lua_ls',
	'gopls',
	'tflint',
	'terraformls',
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

require('lspconfig').tflint.setup({})
require('lspconfig').terraformls.setup({})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require("cmp")

cmp.setup({
	mapping = {
		["<C-Space>"] = cmp.mapping.complete(),
	}
})
