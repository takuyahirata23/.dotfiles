require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use 'neovim/nvim-lspconfig'
  use 'nvim-lua/plenary.nvim'

  -- Cmp
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  -- Cmp

  -- Spell checker
  use 'kamykn/spelunker.vim'
  
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

  use 'mattn/emmet-vim'


  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} },
    defaults = {
      file_ignore_patterns = { "node_modules, *.lock, /public, /lib, /dist" }
    }
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

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['tsserver'].setup {
  capabilities = capabilities
}

require('lspconfig')['elixirls'].setup {
  capabilities = capabilities
}


