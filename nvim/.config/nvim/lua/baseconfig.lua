vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.hidden = true
vim.opt.spell = true
vim.opt.smartcase = true
vim.opt.incsearch = true

--cmp requires this
vim.o.completeopt = "menuone,noselect"

-- Show filename in the window titlebar
vim.opt.title = true 

-- Enables 24-bit RGB. This most likely enable theme
vim.opt.termguicolors = true

-- Highlight a line yanked for 100 ms
vim.g.highlightedyank_highlight_duration = 100

vim.cmd [[
  syntax enable
  colorscheme night-owl
]]

