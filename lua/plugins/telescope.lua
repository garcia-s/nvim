return {

    {
        'nvim-telescope/telescope.nvim',
        branch = "0.1.x",
        dependencies = { 'nvim-lua/plenary.nvim' },
        opts = {
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '--color=never',
                    '--hidden',
                    '--no-heading',
                    '--with-filename',
                    '--line-number',
                    '--column',
                    '--smart-case',
                    '--ignore-file',
                    '.gitignore'
                },
            },
        },

    },
    { 'nvim-telescope/telescope-fzf-native.nvim' },
    {
        dir = "config",
        name = "whatever",
        config = function(_)
            require("config.keymaps")
        end,
        event = "VeryLazy"
    }
}
