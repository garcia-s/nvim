require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use { 'christoomey/vim-tmux-navigator', lazy = false }
    use 'numToStr/Comment.nvim'
    use 'rebelot/kanagawa.nvim'
    use 'nvim-lualine/lualine.nvim'
    use 'nvim-tree/nvim-web-devicons'
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.2', }
    use 'nvim-lua/plenary.nvim'
    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'theprimeagen/harpoon'
    use 'mhartington/formatter.nvim'
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                  -- Required
            { 'hrsh7th/cmp-nvim-lsp' },              -- Required
            { 'L3MON4D3/LuaSnip' },                  -- Required
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
        }
    }
    use({
        "jackMort/ChatGPT.nvim",
        requires = {
            "MunifTanjim/nui.nvim",
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim"
        }
    })
end);
