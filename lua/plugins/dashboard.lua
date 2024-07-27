return {
    'nvimdev/dashboard-nvim',
    event = 'VimEnter',
    dependencies = { { 'nvim-tree/nvim-web-devicons' } },
    config = function()
        require('dashboard').setup {
            theme = "doom",
            config = {
                header = {
                    "                                      ",
                    "                                      ",
                    "                                      ",
                    "                                      ",
                    "                                      ",
                    "⠀⣾⣿⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣶⣿⣷⠀",
                    "⢀⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⡀",
                    "⢸⣿⣿⣿⣿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣿⣿⣿⣿⣿⣿⣿⡇",
                    "⢸⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⡇",
                    "⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣧⡀⠀⠀⠀⠀⠀⣠⣄⠀⠀⠀⠀⠀⢀⣼⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀",
                    "⠀⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣆⠀⠀⠀⢠⣿⣿⡇⠀⠀⠀⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠀",
                    "⠀⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⡄⠀⢸⣿⣿⡇⠀⢠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡟⠀",
                    "⠀⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡄⠀⣿⣿⡇⢠⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡇⠀",
                    "⠀⠀⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠟⠀⣿⣿⡇⠻⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠿⠀⠀",
                    "⠀⠀⠀⠀⠀⣀⣬⣭⣭⣿⣿⣿⣶⣿⣿⣷⣶⡆⣿⣿⢰⣶⣾⣿⣿⣶⣿⣿⣿⣭⣭⣥⣀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠁⣿⣿⠈⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠇⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⠏⠀⣿⣿⠀⠹⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⡿⠀⠀⣿⣿⠀⠀⢿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠻⣿⣿⡿⠁⠀⠀⣿⣿⠀⠀⠈⢿⣿⣿⠟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⢸⣿⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                    "⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀",
                },
                center = {
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = 'Buscar Archivos:           ',
                        desc_hl = 'String',
                        key = 'F',
                        keymap = '<Espacio>f',
                        key_hl = 'Number',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = function()
                            local builtin = require("telescope.builtin")
                            builtin.find_files()
                        end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = 'Archivos de Git:   ',
                        desc_hl = 'String',
                        key = 'G',
                        keymap = '<Espacio>g',
                        key_hl = 'Number',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = function()
                            local builtin = require("telescope.builtin")
                            builtin.git_files()
                        end
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = 'Navegador de archivos:           ',
                        desc_hl = 'String',
                        key = 'E',
                        keymap = '<Espacio>ls',
                        key_hl = 'Number',
                        key_format = ' %s',
                        action = ':Ex'
                    },
                    {
                        icon = ' ',
                        icon_hl = 'Title',
                        desc = 'Archivos de Harpoon:           ',
                        desc_hl = 'String',
                        key = 'H',
                        keymap = '<CTRL-e>',
                        key_hl = 'Number',
                        key_format = ' %s', -- remove default surrounding `[]`
                        action = function()
                            local harpoon = require "harpoon"
                            harpoon.ui:toggle_quick_menu(harpoon:list())
                        end
                    },
                },
            },
        }
    end,
}
