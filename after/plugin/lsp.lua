local lsp = require('lsp-zero')
lsp.preset('recommended')

-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()
local cmp = require('cmp')
lsp.setup_nvim_cmp(
    lsp.defaults.cmp_mappings({
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    }))

lsp.setup({
    "tsserver",
    "eslint",
    "rust_analyzer",
    "dart_analyzer",
    "sumneko_lua"
})
