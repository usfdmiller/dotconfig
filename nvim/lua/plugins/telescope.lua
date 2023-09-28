return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.3",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-telescope/telescope-file-browser.nvim",
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    keys = {
        -- Keybindings for Telescope file pickers
        { '<leader>ff', '<Cmd>Telescope find_files<CR>' },
        { '<leader>fl', '<Cmd>Telescope live_grep<CR>' },
        { '<leader>fs', '<Cmd>Telescope grep_string<CR>' },
        { '<leader>fg', '<Cmd>Telescope git_files<CR>' },
        -- Keybindings for Telescope vim pickers
        { '<leader>fb', '<Cmd>Telescope buffers<CR>' },
        { '<leader>fr', '<Cmd>Telescope resume<CR>' },
        -- Keybindings for Telescope git pickers
        { '<leader>gc', '<Cmd>Telescope git_commits<CR>' },
        { '<leader>gb', '<Cmd>Telescope git_branches<CR>' },
        { '<leader>gs', '<Cmd>Telescope git_status<CR>' },
        -- Keybindings for Telescope diagnostics
        { '<leader>di', '<Cmd>Telescope diagnostics<CR>' },
        -- Keybindings for Telescope file browser
        { '<leader>fd', function()
            require("telescope").extensions.file_browser.file_browser({
                path = "%:p:h",
                select_buffer = true,
            })
        end }
    },
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
                -- Start Telescope in normal mode, press `i` to insert
                initial_mode = "normal",
                -- Configure layout
                layout_config = {
                    height = 0.5,
                    prompt_position = "top"
                },
                -- Configure mappings
                mappings = {
                    n = {
                        -- Normal mode mappings
                    },
                    i = {
                        -- Insert mode mapping
                        ["<M-Down>"] = actions.cycle_history_next,
                        ["<M-Up>"] = actions.cycle_history_prev,
                        ["<C-j>"] = actions.move_selection_next,
                        ["<C-k>"] = actions.move_selection_previous,
                    }
                },
            },
            pickers = {
                buffers = {
                    sort_mru = true,
                    sort_lastused = true
                }
            },
            extensions = {
                file_browser = {
                    -- Disable netrw and use telescope-file-browser instead
                    hijack_netrw = true,
                    layout_config = {
                        height = 0.5,
                        prompt_position = "top",
                    },
                    prompt_path = true,
                    depth = 2,
                    auto_depth = true,
                }
            }
        })

        telescope.load_extension("file_browser")
    end
}
