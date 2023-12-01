vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2

vim.opt.nu = ture
vim.opt.relativenumber = true

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .."/.vim/undodir"
vim.opt.undofile = true

vim.opt.smartindent = true

vim.opt.hidden = true
vim.opt.smartcase = true
vim.opt.incsearch = true

vim.opt.scrolloff = 8

-- spell check
vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- secure places for gutter so error indicators don't break layout
vim.opt.signcolumn = "yes"

vim.opt.scrolloff = 8
vim.opt.cmdheight = 1

-- disable parens highlight
vim.g.loaded_matchparen = 1

--cmp requires this
vim.o.completeopt = "menuone,noselect"

-- Show filename in the window titlebar
vim.opt.title = true 

-- Enables 24-bit RGB. This most likely enable theme
vim.opt.termguicolors = true

-- Highlight a line yanked for 100 ms
vim.g.highlightedyank_highlight_duration = 100

vim.g.mapleader = " "

vim.g.user_emmet_leader_key="<Tab>"
