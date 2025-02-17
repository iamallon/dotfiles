return
{
    "seblyng/roslyn.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("roslyn").setup {
            filewatching = false,
            broad_search = true,
        }
    end
}
