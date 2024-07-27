return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path",
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
        },
        { 'saadparwaiz1/cmp_luasnip' },
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x'
        },
        "rafamadriz/friendly-snippets",
    },
    config = function()
        local cmp = require("cmp")

        require("luasnip.loaders.from_vscode").lazy_load({
            paths = { "/home/symmetry/.config/nvim/symmetry-snippets" },
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({

            snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            sources = cmp.config.sources({
                { name = "path",    keyword_length = 3 },
                { name = "nvim_lsp" },
                { name = "luasnip" },
                { name = "nvim_lua" },
                { name = "buffer",  keyword_length = 3 },
            }),
            mapping = cmp.mapping.preset.insert({
                ['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
                ['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
                ['<Return>'] = cmp.mapping.confirm({ select = true }),
                ['<C-Space>'] = cmp.mapping.complete(),
            }),
        })

        vim.cmd([[
      set completeopt=menuone,noinsert,noselect
      highlight! default link CmpItemKind CmpItemMenuDefault
    ]])
    end,
}


