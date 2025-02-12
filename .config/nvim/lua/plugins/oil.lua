return {
    "stevearc/oil.nvim",
    config = function()
        require("oil").setup {
            view_options = {
                show_hidden = true,
            },
            default_file_explorer = true,
        }
    end
}
