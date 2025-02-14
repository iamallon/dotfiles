return
{
    "stevearc/oil.nvim",
    tag = "v2.14.0",
    config = function()
        require("oil").setup {
            view_options = {
                show_hidden = true,
            },
            default_file_explorer = true,
        }
    end
}
