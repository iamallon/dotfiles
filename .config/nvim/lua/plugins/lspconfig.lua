return
{
    "neovim/nvim-lspconfig",
    tag = "v1.6.0",
    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()
        require("lspconfig").gopls.setup {
            capabilities = capabilities
        }
    end
}
