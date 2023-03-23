-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'
  use 'nvim-lua/popup.nvim'

  -- Cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- Cmp

  -- Spell checker
  use 'kamykn/spelunker.vim'

  -- Harpoon
  use 'ThePrimeagen/harpoon'
  
  -- Highlight on yank
  use 'machakann/vim-highlightedyank'

  -- Themes
  -- use 'cocopon/iceberg.vim'
  use 'haishanh/night-owl.vim'
  
  -- Git
  use 'tpope/vim-fugitive'

   use {
     'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
   }
  
  -- Automatically close brackets
   use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }

  -- Enable "gs" to comment 
  use {
    'tpope/vim-commentary'
  }

  -- Helper for surroundings
  use {
    'tpope/vim-surround'
  }

  use {
    'sbdchd/neoformat'
  }

  use 'mattn/emmet-vim'
  
  -- Hlper for heex syntax highlight
  use 'sheerun/vim-polyglot'
  -- Telescope
  -- use {
  --   'nvim-telescope/telescope.nvim',
  --   requires = { {'nvim-lua/plenary.nvim'} },
  --   defaults = {
  --     file_ignore_patterns = { "node_modules, *.lock, /public, /lib, /dist" }
  --   }
  -- }
  use {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.0',
    defaults = {
      file_ignore_patterns = { "node_modules, *.lock, /public, /lib, /dist" }
    }
  }

end)
