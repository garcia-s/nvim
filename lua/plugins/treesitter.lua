return {
    "nvim-treesitter/nvim-treesitter",

    build = ":TSUpdate",
    lazy = false,
    config = function()
        local treesitter = require("nvim-treesitter.configs")

        treesitter.setup({
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
            autotag = {
                enable = true,
            },
            ensure_installed = {
                "json",
                "javascript",
                "html",
                "css",
                "markdown",
                "vim",
                "vimdoc",
                "dockerfile",
                "c",
                "rust",
            },
            --[[ incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<C-space>",
                    node_incremental = "<C-space>",
                    scope_incremental = false,
                    node_decremental = "<bs>",
                },
            },
            rainbow = {
                enable = true,
                disable = { "html" },
                extended_mode = false,
                max_file_lines = nil,
            }, ]]
            context_commentstring = {
                enable = true,
                enable_autocmd = false,
            },
        })
    end,
}
