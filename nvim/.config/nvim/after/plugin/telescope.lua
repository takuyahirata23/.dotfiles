local builtin = require('telescope.builtin')

vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', 'gf', builtin.git_files, {})
vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
vim.keymap.set('n', 'lf', builtin.buffers, {})
vim.keymap.set('n', 'gb', builtin.git_branches, {})

-- Go to definition
vim.keymap.set('n', 'sd', builtin.lsp_definitions, {})
