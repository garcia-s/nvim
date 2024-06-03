-- Setup language servers.
local mason_lspconfig = require('mason-lspconfig')
local lspconfig = require('lspconfig');
local lsp_zero = require('lsp-zero')
local cmp = require('cmp')
local mason = require("mason")


lsp_zero.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "<C-k>", function() vim.lsp.buf.hover() end, opts)
    -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set('n', 'gi', function() vim.lsp_zero.buf.implementation() end, opts)
    vim.keymap.set("n", "E", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)


mason.setup()
mason_lspconfig.setup({
    ensure_installed = { 'bashls' },
    handlers = {
        lsp_zero.default_setup,
        lua_ls = function()
            local lua_opts = lsp_zero.nvim_lua_ls()
            require('lspconfig').lua_ls.setup(lua_opts)
        end,
    },
})


lspconfig.jsonls.setup({
    formatting = {
        timeout_ms = 6000000000,
    }
})

lspconfig.intelephense.setup({
    settings = {
        intelephense = {
            stubs = {
                "core",
                "wordpress",
                "woocommerce",
                "wordpress-globals",
            },
            environment = {
                phpVersion = "8.3.6"
            },
            files = {
                maxSize = 5000000,
            },
            diagnostics = {
                undefinedConstants = false
            }
        },
    }
})

lspconfig.arduino_language_server.setup {}
lspconfig.dartls.setup({});

local cmp_select = { behavior = cmp.SelectBehavior.Select }

cmp.setup({
    sources = {
        { name = 'path' },
        { name = 'nvim_lsp' },
        { name = 'nvim_lua' },
        { name = 'luasnip', keyword_length = 2 },
        { name = 'buffer',  keyword_length = 3 },
    },
    formatting = lsp_zero.cmp_format(),
    mapping = cmp.mapping.preset.insert({
        ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
        ['<Return>'] = cmp.mapping.confirm({ select = true }),
        ['<C-Space>'] = cmp.mapping.complete(),
    }),
})
