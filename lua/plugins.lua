require('configs.telescope')
require('configs.feline')
require('configs.coc')
require('configs.lsps')
require('configs.cmp')

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Navigation
  use {
	  'nvim-telescope/telescope.nvim',
	  requires = {{ 'nvim-lua/plenary.nvim' }}
  }

  -- Themes
  use {
    'feline-nvim/feline.nvim',
    requires = {{ 'nvim-tree/nvim-web-devicons' }}
  }
  use 'morhetz/gruvbox'

  -- Formatting
  use 'jiangmiao/auto-pairs'
  use 'junegunn/goyo.vim'

  -- Git
  use 'tpope/vim-fugitive'
  use 'lewis6991/gitsigns.nvim'

  -- language servers
  use {
    'neoclide/coc.nvim',
    branch = 'release'
  }
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
end)
