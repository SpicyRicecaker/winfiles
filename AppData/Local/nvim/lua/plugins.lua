return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Post-install/update hook with neovim command
	use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

	use {
		'nvim-telescope/telescope.nvim',
		requires = {{'nvim-lua/plenary.nvim'}}
	}

	use 'sainnhe/gruvbox-material'

	use 'neovim/nvim-lspconfig'

	use 'b3nj5m1n/kommentary'

	use { 'neoclide/coc.nvim', branch = 'release' }

	use 'Pocco81/AutoSave.nvim'
	-- Use specific branch, dependency and run lua file after load
	use {
		'glepnir/galaxyline.nvim',
		branch = 'main',
		-- config = function() require 'statusline' end,
		requires = {'kyazdani42/nvim-web-devicons'}
	}
end)
