vim.g.mapleader = " "

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Move highlighted text in visual mode
keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
-- Cursor remains in place when appending
keymap.set("n", "J", "mzJ`z", opts)
-- Keep cursor centered paging up/down
keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)
-- Keep cursor centered when searching
keymap.set("n", "n", "nzzzv", opts)
keymap.set("n", "N", "Nzzzv", opts)

-- Better indent handling in visual mode
keymap.set("v", "<", "<gv", opts)
keymap.set("v", ">", ">gv", opts)

-- Yank to system register (clipboard)
keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])
-- Paste from system register (clipboard)
keymap.set({ "n", "v" }, "<leader>p", [["+p]])
keymap.set("n", "<leader>P", [["+P]])

-- Delete to null register
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Better escape using jk in insert and terminal mode
keymap.set("i", "jk", "<ESC>", opts)
keymap.set("t", "jk", "<C-\\><C-n>", opts)

-- Delete blank lines below and above
keymap.set("n", "<M-u>", "m`:silent +g/\\m^\\s*$/d<CR>``:noh<CR>", opts)
keymap.set("n", "<M-i>", "m`:silent -g/\\m^\\s*$/d<CR>``:noh<CR>", opts)
-- Add blank lines below and above
keymap.set("n", "<M-j>", ":set paste<CR>m`o<Esc>``:set nopaste<CR>", opts)
keymap.set("n", "<M-k>", ":set paste<CR>m`O<Esc>``:set nopaste<CR>", opts)

keymap.set("i", "<a", "à", opts)
keymap.set("i", "<e", "è", opts)
keymap.set("i", ">e", "é", opts)
keymap.set("i", "<E", "È", opts)
keymap.set("i", "<i", "ì", opts)
keymap.set("i", "<o", "ò", opts)
keymap.set("i", "<u", "ù", opts)
