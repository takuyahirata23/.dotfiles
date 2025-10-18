return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.5',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    local actions = require('telescope.actions')

    vim.keymap.set('n', '<C-e>', function()
      builtin.find_files({
        hidden = true,
        no_ignore = true,
        find_command = {
          'fd', '--type', 'f', '--hidden', '--no-ignore', '--exclude', '.git', '--exclude', 'node_modules', '--exclude',
          'dist', '--exclude', 'build', '--exclude', '.elixir-ls', '--exclude', '.dart_tool', '--exclude', 'data',
          '--exclude', 'deps'
        }
      })
    end)
    vim.keymap.set('n', '<C-p>', builtin.git_files, {})
    vim.keymap.set('n', '<C-g>', builtin.live_grep, {})
    vim.keymap.set('n', '<C-b>', function()
      require('telescope.builtin').buffers({
        ignore_current_buffer = true,
        sort_lastused = true,
        show_all_buffers = true,
        attach_mappings = function(_, map)
          map('i', '<C-d>', actions.delete_buffer)
          map('n', '<C-d>', actions.delete_buffer)
          return true
        end,
      })
    end, {})
    vim.keymap.set('n', 'gb', builtin.git_branches, {})
  end
}
