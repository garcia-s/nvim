require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- use "AhmedAbdulrahman/vim-aylin.nvim"
    use 'numToStr/Comment.nvim'
    use 'rebelot/kanagawa.nvim'
    use { 'nvim-lualine/lualine.nvim' }
    use { 'nvim-tree/nvim-web-devicons' }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.2',
        requires = {
            { 'nvim-lua/plenary.nvim' }
        }
    }

    use('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' })
    use 'theprimeagen/harpoon'
    use "mbbill/undotree"
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },             -- Required
            { 'williamboman/mason.nvim' },           -- Optional
            { 'williamboman/mason-lspconfig.nvim' }, -- Optional
            { 'jose-elias-alvarez/null-ls.nvim' },
            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },     -- Required
            { 'hrsh7th/cmp-nvim-lsp' }, -- Required
            { 'L3MON4D3/LuaSnip' },     -- Required
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-cmdline' },
            { 'hrsh7th/cmp-path' },
            { 'hrsh7th/cmp-nvim-lua' },
        }
    }


    use { 'goolord/alpha-nvim',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require('alpha').setup(require("alpha.themes.startify").config)
        end
    }
end);

require("mason").setup()
