return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "hrsh7th/cmp-nvim-lsp",
        'neovim/nvim-lspconfig',
        {
            'VonHeikemen/lsp-zero.nvim',
            branch = 'v3.x'
        },
    },
    config = function()
        require("mason").setup()
        local lspconfig = require("mason-lspconfig")
        local capabilities = require('cmp_nvim_lsp').default_capabilities()

        lspconfig.setup({
            handlers = {
                function(server_name)
                    local config = vim.lsp.config[server_name] or {}
                    config.capabilities = capabilities
                    vim.lsp.start(config)
                end,
            }
        })

        vim.lsp.config('dartls',
            {
                cmd = { "dart", "language-server", "--protocol=lsp" },
                filetypes = { "dart" },
                root_markers = { 'pubspec.yaml' },
                init_options = {
                    onlyAnalyzeProjectsWithOpenFiles = true,
                    suggestFromUnimportedLibraries = true,
                    closingLabels = true,
                    outline = true,
                    flutterOutline = true,
                },
                settings = {
                    init_options = {
                        onlyAnalyzeProjectsWithOpenFiles = true,
                        suggestFromUnimportedLibraries = true,
                        closingLabels = false,
                        outline = true,
                        flutterOutline = true,
                    },
                    dart = {
                        analysisExcludedFolders = {
                            vim.fn.expand("$PUB_CACHE"),
                            vim.fn.expand("$FLUTTER_ROOT"),
                            vim.fn.expand("$XDG_DATA_HOME/dart"),
                            vim.fn.expand("$XDG_CACHE_HOME/dart"),
                        },
                        updateImportsOnRename = true,
                        completeFunctionCalls = true,
                        showTodos = true,
                    },
                },
            }
        )

        vim.lsp.enable('dartls')
        vim.lsp.config("gdscript", {
            name = "godot",
            cmd = vim.lsp.rpc.connect("127.0.0.1", 6005),
            capabilities = capabilities,
        })
        vim.lsp.enable('gdscript')
    end,
}
