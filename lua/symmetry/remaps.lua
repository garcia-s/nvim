function format_code()
    print("Formatting text");
    vim.lsp.buf.format({ async = false, timeout = 2000 })
    vim.diagnostic.enable(0);
end

--Workaround for Cosmic Terminal
vim.keymap.set("n", "ª", format_code)
vim.keymap.set("n", "<A-F>", format_code)
vim.keymap.set("n", "<C-s>", ':<c-u>write<cr>')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })
