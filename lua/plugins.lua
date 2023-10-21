require('configs.telescope')


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
  use 'ellisonleao/gruvbox.nvim'

end)
