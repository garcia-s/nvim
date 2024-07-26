return {
"hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        "hrsh7th/cmp-buffer", -- source for text in buffer
        "hrsh7th/cmp-path",   -- source for file system paths
        {
            "L3MON4D3/LuaSnip",
            version = "v2.*",
            -- install jsregexp (optional!).
            build = "make install_jsregexp",
        },

        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x'
        },

        "rafamadriz/friendly-snippets",
    },
    config = function()
        local cmp = require("cmp")

        require("luasnip.loaders.from_vscode").lazy_load({
            paths = "./snippets/code",
        })

        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        cmp.setup({
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "nvim_lua" },
                { name = "luasnip" },
                { name = "buffer",  keyword_length = 3 },
                { name = "path" },
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
