return
{
    "stevearc/oil.nvim",
    tag = "v2.14.0",
    config = function()
        require("oil").setup {
            default_file_explorer = true,
            columns = {
                "size"
            },
            view_options = {
                show_hidden = true,
            },
        }
    end
}
