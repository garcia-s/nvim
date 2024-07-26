local builtin = require('telescope.builtin')
local api = require("Comment.api")
local harpoon = require("harpoon")
local cmp = require("cmp")
------------ General -------------
vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)

---------------- Telescope ----------------
vim.keymap.set("n", "<leader>g", builtin.git_files)
vim.keymap.set("n", "<leader>f", builtin.find_files)
vim.keymap.set("n", "<leader>lg", builtin.live_grep)


--------------- LSP --------------------


vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.hover() end)
-- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set('n', 'gi', function() vim.lsp_zero.buf.implementation() end)
vim.keymap.set("n", "E", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end)
vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end)


local function format_code()
    vim.lsp.buf.format({ async = false })
    -- Old workaround for dart
    vim.diagnostic.enable(true);
end
--Workaround for Cosmic Terminal
vim.keymap.set("n", "ª", format_code)
vim.keymap.set("n", "<A-F>", format_code)
vim.keymap.set("n", "<C-s>", ':<c-u>write<cr>')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("n", "<C-x>", "<cmd>!chmod +x %<CR>", { silent = true })

---------------- Comment line ----------------
vim.keymap.set("n", "<C-]>", api.toggle.linewise.current)
local esc = vim.api.nvim_replace_termcodes(
    '<ESC>', true, false, true
)

---------------- Comment Block ----------------
vim.keymap.set('x', '<C-]>', function()
    vim.api.nvim_feedkeys(esc, 'nx', false)
    api.toggle.blockwise(vim.fn.visualmode())
end)



--------------- Harpoooooooonnnn ----------------
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-a>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-d>", function() harpoon:list():next() end)
