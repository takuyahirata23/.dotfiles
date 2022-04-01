require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  
  -- Git
  use 'tpope/vim-fugitive'

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }

  -- Themes
  use 'cocopon/iceberg.vim'
  use 'haishanh/night-owl.vim'
end)	


-- treesitter 
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained",
  highlight = {
    enable = true,             
  },
}
