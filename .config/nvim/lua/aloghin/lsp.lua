vim.diagnostic.config({
    virtual_text = { severity = { min = vim.diagnostic.severity.WARN } },
    signs = { severity = { min = vim.diagnostic.severity.WARN } },
    underline = { severity = { min = vim.diagnostic.severity.WARN } },
})

vim.lsp.inlay_hint.enable()
