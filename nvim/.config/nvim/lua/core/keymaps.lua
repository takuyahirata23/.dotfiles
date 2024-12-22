local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<Leader>w', ':write<CR>', opts)
keymap('n', '<Leader>q', ':q<CR>', opts)
keymap('n', '<Leader>V', ':Vex<CR>', opts)
keymap('n', '<Leader>S', ':Sex<CR>', opts)
keymap('n', '<Leader>ex', ':Ex<CR>', opts)

-- Quickfix
keymap("n", "<Leader>qa", "<C-q>", opts)
keymap("n", "<Leader>qo", "<cmd>copen<CR>", opts)
keymap("n", "<Leader>qc", "<cmd>cclose<CR>", opts)
keymap("n", "<Leader>qn", "<cmd>cnext<CR>", opts)
keymap("n", "<Leader>qp", "<cmd>cprevious<CR>", opts)

-- Stay in the middle when jump with <C-d> and <C-u>
keymap('n', '<C-d>', '<C-d>zz', opts)
keymap('n', '<C-u>', '<C-u>zz', opts)
keymap('n', 'n', 'nzzzv', opts)
keymap('n', 'N', 'Nzzzv', opts)

-- Clear searh highlight
keymap('n', '<Leader>cs', ':let @/ = ""<CR>', opts)

--Yank to clipboard
keymap('v', '<Leader>cy', '\"+y', opts)

--Delete without yanking
keymap('v', 'D', '\"_d', opts)

-- Go to last changed place
keymap('n', 'lc', "`.", opts)
