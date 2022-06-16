vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.hidden = true
vim.opt.smartcase = true
vim.opt.incsearch = true
--cmp requires this
vim.o.completeopt = "menuone,noselect"

-- Show filename in the window titlebar
vim.opt.title = true 

-- Enables 24-bit RGB. This most likely enable theme
vim.opt.termguicolors = true

vim.cmd [[
  syntax enable
  colorscheme night-owl
]]

