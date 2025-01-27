return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    config = function()
        --Stolen from tjdevries
        --
        vim.filetype.add({
            extension = {
                gotmpl = 'gotmpl',
            },
            pattern = {
                [".*/.*%.tpl"] = "helm",
                [".*/.*%.ya?ml"] = "helm",
            },
        })
    
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
