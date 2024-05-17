require "lazy".setup {
    -- I NEED TO START USING TMUX
    { "christoomey/vim-tmux-navigator", lazy = false },
    "numToStr/Comment.nvim",
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        dependencies = "nvim-lua/plenary.nvim"
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'
    }
    ,
    {
        "kdheepak/lazygit.nvim",
        dependencies = "nvim-lua/plenary.nvim"
    },
    { "nvim-treesitter/nvim-treesitter" }, -- Should Execute :TSUpdate
    "theprimeagen/harpoon",
    -- LSP things and stuffssss
    'williamboman/mason.nvim',
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x'
    },
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'neovim/nvim-lsp',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lua',
    {
        'L3MON4D3/LuaSnip',
        build = "make install_jsregexp"
    },
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",
    "lukas-reineke/indent-blankline.nvim",
    'm4xshen/autoclose.nvim',
    --ColorSchemes
    "nyoom-engineering/oxocarbon.nvim",
}
