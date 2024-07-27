return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        'neovim/nvim-lspconfig',
        'neovim/nvim-lsp',
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x'
        },
    },
    config = function()
        local nvim_lsp = require("lspconfig")
        local mason_lspconfig = require("mason-lspconfig")
        local lsp_zero = require("lsp-zero")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()
        mason_lspconfig.setup_handlers({
            lsp_zero.default_setup,
            nvim_lsp.dartls.setup {
                capabilities = capabilities,
            }
        })
    end,
}
