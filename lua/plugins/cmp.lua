return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path",
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            build = "make install_jsregexp",
            dependencies = {
                "rafamadriz/friendly-snippets",
                'saadparwaiz1/cmp_luasnip'
            }
        },
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x'
        },
    },
    config = function()
        local cmp = require("cmp")
        local ls = require("luasnip")
        ls.config.set_config {
            updateevents = "TextChanged, TextChangedI",
        }
        require("luasnip.loaders.from_vscode").lazy_load({})
        require("luasnip.loaders.from_vscode").lazy_load({
            paths = {
                vim.fn.expand("./symmetry-snippets"),
            }
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({

            snippet = {
                expand = function(args)
                    ls.lsp_expand(args.body)
                end,
            },
            sources = cmp.config.sources({
                { name = "luasnip" },
                { name = "nvim_lsp" },
                { name = "nvim_lua" },
                { name = "path",    keyword_length = 3 },
                { name = "buffer",  keyword_length = 3 },
            }),
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<Return>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })
    end,
}
