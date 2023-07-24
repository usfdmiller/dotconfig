vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Move highlighted text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Cursor remains in place when appending
vim.keymap.set("n", "J", "mzJ`z")
-- Keep cursor centered paging up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- Keep cursor centered when searching
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Better indent handling in visual mode
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Better escape using jk in insert and terminal mode
vim.keymap.set("i", "jk", "<ESC>")
vim.keymap.set("t", "jk", "<C-\\><C-n>")

vim.keymap.set("i", "'a", "à")
vim.keymap.set("i", "'e", "è")
vim.keymap.set("i", "'i", "ì")
vim.keymap.set("i", "'o", "ò")
vim.keymap.set("i", "'u", "ù")
