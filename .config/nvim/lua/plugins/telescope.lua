return
{
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        require('telescope').setup {
            pickers = {
                find_files = {
                    theme = "ivy"
                }
            }
        }
        vim.keymap.set('n', '<space><space>', require('telescope.builtin').find_files, { desc = 'Telescope find files' })
    end
}
