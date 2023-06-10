local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true }

keymap('n', '<Leader>w', ':write<CR>', opts)
keymap('n', '<Leader>q', ':q<CR>', opts)
keymap('n', '<Leader>V', ':Vex<CR>', opts)
keymap('n', '<Leader>S', ':Sex<CR>', opts)
keymap('n', '<Leader>ex', ':Ex<CR>', opts)


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



-- Show diagnostic
keymap('n', 'K', "<CMD>lua vim.diagnostic.open_float()<CR>", opts)


-- Format with Neoformat
keymap('n', 'nn', "<CMD>Neoformat<CR>", opts)






