vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "k", ":m '<-2<cr>gv=gv")
vim.keymap.set({ "n", "v" }, "<A-F>", vim.lsp.buf.format)
vim.keymap.set("n", "<C-s>", ':<c-u>write<cr>')

