return
{
    "nvim-treesitter/nvim-treesitter",
    tag = "v0.9.3",
    build = ":TSUpdate",
    config = function()
        require "nvim-treesitter.configs".setup {
            ensure_installed = { "go", "c_sharp", "markdown", "markdown_inline", "lua", "vimdoc", "json", "yaml" },
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
