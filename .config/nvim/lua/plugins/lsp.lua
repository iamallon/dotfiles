return
{
    {
        "seblyng/roslyn.nvim",
        event = { "BufReadPre", "BufNewFile" },
        opts = {
            filewatching = false,
            broad_search = true,
        }
    },
    {
        "neovim/nvim-lspconfig"
    }
}
