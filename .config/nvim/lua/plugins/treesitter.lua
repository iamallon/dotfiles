return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        require "nvim-treesitter.configs".setup {
            ensure_installed = { "go", "c_sharp", "markdown", "lua", "vimdoc" },
            highlight        = { enabled = true },
            indent           = { enabled = true }
        }
    end
}
