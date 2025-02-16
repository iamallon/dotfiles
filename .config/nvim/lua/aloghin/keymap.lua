vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

vim.keymap.set('n', '<space><space>', require('telescope.builtin').find_files)
vim.keymap.set('n', '<space>b', require('telescope.builtin').buffers)

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gi", require('telescope.builtin').lsp_implementations)
vim.keymap.set("n", "<Tab>", vim.lsp.buf.code_action)
vim.keymap.set('n', 'gr', require('telescope.builtin').lsp_references)
vim.keymap.set("n", "ff", vim.lsp.buf.format)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "<C-Up>", vim.diagnostic.goto_prev)
vim.keymap.set("n", "<C-Down>", vim.diagnostic.goto_next)
