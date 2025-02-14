return
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
        'nvim-lua/plenary.nvim',
        "nvim-telescope/telescope-ui-select.nvim"
    },
    config = function()
        require('telescope').setup {
            defaults = {
                preview = {
                    filesize_limit = 0.1
                },
                file_ignore_patterns = { ".git", ".vs", ".idea" },
                mappings = {
                    n = {
                        ["d"] = require("telescope.actions").delete_buffer,
                    }
                }
            },
            pickers = {
                find_files = {
                    theme = "ivy"
                },
                buffers = {
                    initial_mode = "normal",
                    sort_mru = true,
                    sort_last_used = true,
                    theme = "ivy"
                }
            },
            extensions = {
                ["ui-select"] = {
                    require("telescope.themes").get_cursor { initial_mode = "normal" }
                }
            }
        }

        require("telescope").load_extension("ui-select")

        vim.keymap.set('n', '<space><space>', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<space>b', require('telescope.builtin').buffers, { desc = 'Telescope buffers' })
    end
}
