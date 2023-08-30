local neogit = require("neogit")

neogit.setup({})

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Keybindings for Neogit
keymap.set("n", "<leader>ng", neogit.open, opts)
