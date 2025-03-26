vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "-", "<cmd>Oil<CR>")

vim.keymap.set("n", "<space>f", require("telescope.builtin").find_files)
vim.keymap.set("n", "<space>b", require("telescope.builtin").buffers)
vim.keymap.set("n", "<space>g", require("telescope.builtin").live_grep)
vim.keymap.set("n", "<space>w", function() require("telescope.builtin").grep_string({search = vim.fn.expand("<cword>")}) end)

vim.keymap.set("n", "d", "\"_d")
vim.keymap.set("n", "dd", "\"_dd")

vim.keymap.set("o", "iq", "i\"")
vim.keymap.set("o", "iQ", "i\'")
vim.keymap.set("o", "aq", "a\"")
vim.keymap.set("o", "aQ", "a\'")

vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gi", require("telescope.builtin").lsp_implementations)
vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references)
vim.keymap.set("n", "gh", vim.lsp.buf.hover)
vim.keymap.set("n", "ga", vim.lsp.buf.code_action)
vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)
vim.keymap.set("n", "rr", vim.lsp.buf.rename)
vim.keymap.set("n", "<space><space>", vim.lsp.buf.format)
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev)
vim.keymap.set("n", "]d", vim.diagnostic.goto_next)
