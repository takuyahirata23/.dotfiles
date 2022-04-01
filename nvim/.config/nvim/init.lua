vim.g.mapleader = ' '

vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true

-- Enables 24-bit RGB. This most likely enable theme
vim.opt.termguicolors = true

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<Leader>w', ':write<CR>', opts)
keymap('n', '<Leader>V', ':Vex<CR>', opts)
keymap('n', '<Leader>ex', ':Ex<CR>', opts)
keymap('n', '<Leader>cs', ':let @/ = ""<CR>', opts)

--Git
keymap('n', '<Leader>gs', '<CMD>G<CR>', opts)
keymap('n', '<Leader>gc', '<CMD>Git commit<CR>', opts)
 
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

vim.cmd [[
  syntax enable
  colorscheme iceberg 
]]


