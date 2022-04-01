local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<Leader>w', ':write<CR>', opts)
keymap('n', '<Leader>q', ':q<CR>', opts)
keymap('n', '<Leader>V', ':Vex<CR>', opts)
keymap('n', '<Leader>ex', ':Ex<CR>', opts)
keymap('n', '<Leader>cs', ':let @/ = ""<CR>', opts)

--Git
keymap('n', '<Leader>gs', '<CMD>G<CR>', opts)
keymap('n', '<Leader>gc', '<CMD>Git commit<CR>', opts)
