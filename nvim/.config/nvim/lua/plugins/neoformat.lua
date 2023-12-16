return {
  "sbdchd/neoformat",
  config = function()
    vim.keymap.set('n', '<leader>ff', ':Neoformat<CR>')
  end
}
