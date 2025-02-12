vim.lsp.inlay_hint.enable()

vim.api.nvim_create_autocmd("LspAttach", {
    group = vim.api.nvim_create_augroup("DefaultLspAttach", {}),
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
        vim.keymap.set("n", "<C-Up>", function() vim.diagnostic.goto_prev() end, opts)
        vim.keymap.set("n", "<C-Down>", function() vim.diagnostic.goto_next() end, opts)
    end,
})
