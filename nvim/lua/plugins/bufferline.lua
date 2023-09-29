return {
    'akinsho/bufferline.nvim',
    version = "*",
    dependencies = 'nvim-tree/nvim-web-devicons',
    lazy = false,
    keys = {
        { '<M-[>', '<Cmd>BufferLineCyclePrev<CR>' },
        { '<M-]>', '<Cmd>BufferLineCycleNext<CR>' }
    },
    config = function()
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                diagnostics_indicator = function(count, level, diagnostics_dict, context)
                    local s = " "
                    for e, n in pairs(diagnostics_dict) do
                        local sym = e == "error" and " "
                            or (e == "warning" and " " or "")
                        s = s .. n .. sym
                    end
                    return s
                end,
                modified_icon = "●",
                show_close_icon = false,
                show_buffer_close_icons = false,
                close_command = function(bufid)
                    require('bufdelete').bufdelete(bufid)
                end
            },
            highlights = {
                fill = {
                    fg = "#ebdbb2",
                    bg = "#1d2021",
                },
            },
        })
    end
}
