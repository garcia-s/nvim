-- Setup language servers.
local lspconfig = require('mason-lspconfig')
local lsp = require('lsp-zero')
local cmp = require('cmp')
local mason = require("mason")


lsp.on_attach(function(client, bufnr)
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)

    vim.keymap.set('n', 'E', vim.diagnostic.show, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', '<C-k>', vim.lsp.buf.hover, opts)
    vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder, opts)
    vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder, opts)
    vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
end)

mason.setup()
lsp.preset('recommended')
lspconfig.setup({
    ensure_installed = {},
    handlers = {
        lsp.default_setup,
    },
})



local cmp_mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})


cmp_mapping['<Tab>'] = nil;
cmp_mapping['<S-Tab>'] = nil;



lsp.setup_nvim_cmp({
    mapping = cmp_mapping,
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
})


lsp.setup()
