local dap = require("dap")
local dapui = require("dapui")
local dappy = require("dap-python")

dappy.setup("~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end

dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end

dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

keymap.set("n", "<leader>dc", dap.continue, opts)
keymap.set("n", "<leader>db", ":DapToggleBreakpoint <CR>", opts)
