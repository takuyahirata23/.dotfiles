-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

 use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}

  use 'nvim-lua/popup.nvim'

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
  
  use 'mbbill/undotree'
  
  -- Hlper for heex syntax highlight
  use 'sheerun/vim-polyglot'

  use {
    'nvim-telescope/telescope.nvim', 
    tag = '0.1.4',
    requires = { {'nvim-lua/plenary.nvim'} },
    defaults = {
      file_ignore_patterns = { "node_modules, *.lock, /public, /dist" }
    }
  }


end)
