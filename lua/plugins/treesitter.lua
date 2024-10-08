return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        --Stolen from tjdevries
        vim.filetype.add {
            extension = {
                templ = "templ"
            }
        }
        vim.treesitter.language.register('templ', 'templ')
        local configs = require("nvim-treesitter.configs")

        if not configs.templ then
            configs.templ = {
                default_config = {
                    cmd = { "templ", "lsp" },
                    filetypes = { 'templ' },
                    root_dir = require "lspconfig.util".root_pattern("go.mod", ".git"),
                    settings = {},
                },
            }
        end

        configs.setup({
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = false },
            autotag = {
                enable = true,
            },
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
        })
    end,
}
