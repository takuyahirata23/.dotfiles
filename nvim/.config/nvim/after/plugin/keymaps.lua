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

--Git
keymap('n', '<Leader>gs', '<CMD>G<CR>', opts)
keymap('n', '<Leader>gc', '<CMD>Git commit<CR>', opts)

-- Telescope
keymap('n', '<C-p>', "<CMD>lua require'telescope.builtin'.find_files()<CR>", opts)
keymap('n', '<C-g>', "<CMD>lua require'telescope.builtin'.live_grep()<CR>", opts)
keymap('n', 'lf', "<CMD>lua require'telescope.builtin'.buffers()<CR>", opts)
keymap('n', 'gd', "<CMD>lua require'telescope.builtin'.lsp_definitions()<CR>", opts)
keymap('n', 'ca', "<CMD>lua require'telescope.builtin'.lsp_code_actions()<CR>", opts)
-- Show diagnostic
keymap('n', 'K', "<CMD>lua vim.diagnostic.open_float()<CR>", opts)
keymap('n', 'gb', "<CMD>lua require'telescope.builtin'.git_branches()<CR>", opts)

-- Harpoon
keymap('n', 'ah', "<CMD>lua require'harpoon.mark'.add_file()<CR>", opts)
keymap('n', 'lh', "<CMD>lua require'harpoon.ui'.toggle_quick_menu()<CR>", opts)

-- Format with Neoformat
keymap('n', 'nn', "<CMD>Neoformat<CR>", opts)


--cmp
local cmp = require'cmp'
cmp.setup({
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
    }, {
      { name = 'buffer' },
    })
})

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })



