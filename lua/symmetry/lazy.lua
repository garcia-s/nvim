require "lazy".setup {
    -- I NEED TO START USING TMUX
    { "christoomey/vim-tmux-navigator", lazy = false },
    "numToStr/Comment.nvim",
    "rebelot/kanagawa.nvim",
    "lunarvim/Onedarker.nvim",
    "nvim-lualine/lualine.nvim",
    "nvim-tree/nvim-web-devicons",
    { "nvim-telescope/telescope.nvim",  tag = "0.1.2" },
    "nvim-lua/plenary.nvim",
    { "nvim-treesitter/nvim-treesitter" }, -- Should Execute :TSUpdate
    "theprimeagen/harpoon",
    "mhartington/formatter.nvim",
    -- LSP things and stuffssss
    'williamboman/mason.nvim',
    { 'VonHeikemen/lsp-zero.nvim',      branch = 'v3.x' },
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp', 'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lua',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    "rafamadriz/friendly-snippets",
    "lukas-reineke/indent-blankline.nvim",
    'm4xshen/autoclose.nvim',
}
