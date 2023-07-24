require("nvim-tree").setup()

-- Mapping commands for nvim tree
vim.keymap.set("n", "<C-m>", "<cmd> NvimTreeFocus <CR>")
vim.keymap.set("n", "<C-n>", "<cmd> NvimTreeToggle <CR>")
