local builtin = require("telescope.builtin")

-- Keybindings for normal mode
vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>pg", builtin.live_grep, {})
vim.keymap.set("n", "<leader>pb", builtin.buffers, {})
vim.keymap.set("n", "<leader>ps", builtin.grep_string, {})
vim.keymap.set("n", "<C-p>", builtin.git_files, {})
