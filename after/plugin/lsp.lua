-- Setup language servers.
local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig');
local lsp = require('lsp-zero')
local cmp = require('cmp')
local mason = require("mason")

require("luasnip.loaders.from_vscode").lazy_load()

lsp.on_attach(function(client, bufnr)
    opts = { buffer = bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'E', vim.diagnostic.open_float, opts)
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


mason_lspconfig.setup({
    ensure_installed = { 'tsserver', 'bashls', 'gopls' },
    handlers = {
        lsp.default_setup,
    },
})

lspconfig.intelephense.setup({
    settings = {
        intelephense = {
            stubs = {
                "bcmath",
                "bz2",
                "calendar",
                "Core",
                "curl",
                "zip",
                "zlib",
                "wordpress",
                "woocommerce",
                "acf-pro",
                "wordpress-globals",
                "wp-cli",
                "genesis",
                "polylang"
            },
            files = {
                maxSize = 5000000,
            },
        },
    }
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
