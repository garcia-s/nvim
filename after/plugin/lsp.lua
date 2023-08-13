-- Setup language servers.
local lspconfig = require('lspconfig')
local lsp = require('lsp-zero')
local cmp = require('cmp')
local null_ls = require("null-ls")

vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist)

vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
    vim.lsp.diagnostic.on_publish_diagnostics, {
        virtual_text = true
    }
)
vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    end,
})

lsp.preset('recommended')
lsp.nvim_workspace()

lspconfig.clangd.setup({
    filetypes = { 'c', 'cpp', 'objc', 'objcpp', 'cuda' },
})

-- Setting up dart server
lspconfig.dartls.setup{}


lsp.setup({
    "tsserver",
    "eslint",
    "rust_analyzer",
    "sumneko_lua",
})

cmp.setup({

    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
    }),
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})


null_ls.setup({
    sources = { null_ls.builtins.formatting.prettierd }
})
