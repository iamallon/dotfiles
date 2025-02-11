return {
    "neovim/nvim-lspconfig",
    config = function()
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        require("lspconfig").gopls.setup {
            capabilities = capabilities
        }
    end
}
