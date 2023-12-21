return {
  'nvim-telescope/telescope.nvim', tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<C-p>', builtin.find_files, {})
    vim.keymap.set('n', '<C-e>', builtin.git_files, {})
    vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
    vim.keymap.set('n', 'lf', builtin.buffers, {})
    vim.keymap.set('n', 'gb', builtin.git_branches, {})
  end
}
