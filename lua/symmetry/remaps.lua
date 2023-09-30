vim.keymap.set("n", "<A-F>", function() 
    if(vim.bo.filetype == "css" or vim.bo.filetype == "html") then
        return vim.cmd({cmd= "Format"})
    end
    vim.lsp.buf.format({async = true, timeout= 2000})

end)
vim.keymap.set("n", "<C-s>", ':<c-u>write<cr>')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })
