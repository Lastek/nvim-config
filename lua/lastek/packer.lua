-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
if vim.g.vscode then

else
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.6',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
	  "EdenEast/nightfox.nvim",
	  --as = 'nightfox',
	  config = function()
		  vim.cmd("colorscheme nightfox")
		end
	}

	use( 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
	use( 'ThePrimeagen/harpoon')
	use 'mbbill/undotree'
	use 'tpope/vim-fugitive'

	-- LSP Installer
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'

	-- LSP Support
	use 'neovim/nvim-lspconfig'
	-- Autocompletion
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-nvim-lsp'
	--	use {
	--		'ms-jpq/coq_nvim',
	--		branch = 'coq'
	--	}
	end )
end
