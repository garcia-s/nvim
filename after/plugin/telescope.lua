local telescope = require('telescope')
local builtin = require('telescope.builtin')

telescope.setup {
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
}

vim.keymap.set('n', '<leader>g', builtin.git_files, {})
vim.keymap.set('n', '<leader>f', builtin.find_files, {})
vim.keymap.set('n', '<leader>lg', builtin.live_grep, {})
