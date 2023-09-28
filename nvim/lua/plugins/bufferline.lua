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
                close_command = function(bufid)
                    require('bufdelete').bufdelete(bufid)
                end
            }
        })
    end
}
