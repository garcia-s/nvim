local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'
  -- Your plugins go here
  use 'rebelot/kanagawa.nvim'
  use 'nvim-lualine/lualine.nvim'
  use 'neovim/nvim-lspconfig'
  use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
  use 'onsails/lspkind.nvim'
  use({"L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*"})
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/nvim-cmp' 
  use 'glepnir/lspsaga.nvim'

end)

