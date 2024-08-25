return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        treesitter.setup({
            auto_install = true,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true },
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
