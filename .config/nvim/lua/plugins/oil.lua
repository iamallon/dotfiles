return
{
    "stevearc/oil.nvim",
    tag = "v2.14.0",
    lazy = false,
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
