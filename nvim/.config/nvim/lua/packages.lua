require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'

  -- Themes
  use 'cocopon/iceberg.vim'
  use 'haishanh/night-owl.vim'
  
  -- Git
  use 'tpope/vim-fugitive'

   use {
     'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
   }
  
  -- Automatically close brackets
  use {
    'jiangmiao/auto-pairs'
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


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
end)	


require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "elixir" }, 
  highlight = {
    enable = true,             
  },
  indent = {
    enable = true
  }
}

require'lspconfig'.tsserver.setup {}

require'lspconfig'.elixirls.setup{
    cmd = { "/Users/takuyahirata/elixir-ls/language_server.sh" };
}

