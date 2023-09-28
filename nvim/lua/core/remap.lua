vim.g.mapleader = " "

local set = vim.keymap.set
local opts = { silent = true }

-- Move highlighted text in visual mode
set("v", "J", ":m '>+1<CR>gv=gv", opts)
set("v", "K", ":m '<-2<CR>gv=gv", opts)
-- Cursor remains in place when appending
set("n", "J", "mzJ`z", opts)
-- Keep cursor centered paging up/down
set("n", "<C-d>", "<C-d>zz", opts)
set("n", "<C-u>", "<C-u>zz", opts)
-- Keep cursor centered when searching
set("n", "n", "nzzzv", opts)
set("n", "N", "Nzzzv", opts)

-- Better indent handling in visual mode
set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)

-- Yank to system register (clipboard)
set({ "n", "v" }, "<leader>y", [["+y]])
set("n", "<leader>Y", [["+Y]])
-- Paste from system register (clipboard)
set({ "n", "v" }, "<leader>p", [["+p]])
set("n", "<leader>P", [["+P]])

-- Delete to null register
set({ "n", "v" }, "<leader>d", [["_d]])

-- Better escape using jk in insert and terminal mode
set("i", "jk", "<ESC>", opts)
set("t", "jk", "<C-\\><C-n>", opts)

-- Delete blank lines below and above
set("n", "<M-u>", "m`:silent +g/\\m^\\s*$/d<CR>``:noh<CR>", opts)
set("n", "<M-i>", "m`:silent -g/\\m^\\s*$/d<CR>``:noh<CR>", opts)
-- Add blank lines below and above
set("n", "<M-j>", ":set paste<CR>m`o<Esc>``:set nopaste<CR>", opts)
set("n", "<M-k>", ":set paste<CR>m`O<Esc>``:set nopaste<CR>", opts)

-- Special characters
set("i", "<a", "à", opts)
set("i", "<e", "è", opts)
set("i", ">e", "é", opts)
set("i", "<E", "È", opts)
set("i", "<i", "ì", opts)
set("i", "<o", "ò", opts)
set("i", "<u", "ù", opts)
