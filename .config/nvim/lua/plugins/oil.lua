return
{
    "stevearc/oil.nvim",
    tag = "v2.14.0",
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    lazy = false,
    config = function()
        require("oil").setup {
            default_file_explorer = true,
            columns = {
                "icon",
                "size"
            },
            view_options = {
                show_hidden = true,
            },
        }
    end
}
