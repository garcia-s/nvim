local builtin = require('telescope.builtin')
local api = require("Comment.api")
local harpoon = require("harpoon")
------------ General -------------

-- abre el explorador de archivos normal
-- space->l->s
vim.keymap.set("n", "<leader>ls", vim.cmd.Ex)

---------------- Telescope ----------------
-- Abre el buscador de telescope solo con los archivos de git
-- Space->g
vim.keymap.set("n", "<leader>g", builtin.git_files)

-- Abre el buscador de telescope con todos los archivos
-- Space->f
vim.keymap.set("n", "<leader>f", builtin.find_files)

-- Abre LiveGrep y te permite buscar archivos que contengan una cadena de texto
-- Space->l->g
vim.keymap.set("n", "<leader>lg", builtin.live_grep)


--------------- LSP --------------------


-- Te lleva al archivo y linea de definicion de
-- una clase, struct, variable o funcion
-- g->d
--
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
-- Te muestra la definicion de una
-- una clase, struct, variable o funcion
-- CTRL+i
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end)
-- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end)
vim.keymap.set('n', 'gi', function() vim.lsp_zero.buf.implementation() end)
vim.keymap.set("n", "E", function() vim.diagnostic.open_float() end)
vim.keymap.set("n", "<leader>j", function() vim.diagnostic.goto_next() end)
vim.keymap.set("n", "<leader>k", function() vim.diagnostic.goto_prev() end)
vim.keymap.set("n", "<leader>c", function() vim.lsp.buf.code_action() end)
vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end)
vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end)

-- Old workaround for dart

local function format_code()
    vim.lsp.buf.format({ async = true })
    vim.diagnostic.enable(true)
end
-- Workaround for Cosmic Terminal
vim.keymap.set("n", "<A-F>", format_code)
vim.keymap.set("n", "<C-s>", ':<c-u>update<cr>')
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-------------- Comment line ----------------

local esc = vim.api.nvim_replace_termcodes('<ESC>', true, false, true)

vim.keymap.set({ "n", "x" }, "<C-]>", function()
    vim.api.nvim_feedkeys(esc, 'nx', false)
    api.toggle.linewise(vim.fn.visualmode())
end)

-- TODO: implement comment block

--------------- Harpoooooooonnnn ----------------
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
vim.keymap.set("n", "<C-e>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

vim.keymap.set("n", "<C-a>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-d>", function() harpoon:list():next() end)

