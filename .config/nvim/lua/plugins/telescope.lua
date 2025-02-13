return
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            defaults = {
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
            }
        }

        vim.keymap.set('n', '<space><space>', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
        vim.keymap.set('n', '<space>b', require('telescope.builtin').buffers, { desc = 'Telescope buffers' })
    end
}
