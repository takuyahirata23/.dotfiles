local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

lsp.ensure_installed({
  -- Replace these with whatever servers you want to install
  'tsserver',
  'eslint',
  'rust_analyzer',
  'elixirls',
  'tailwindcss'
})

-- (Optional) Configure lua language server for neovim
--require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

-- Show code action
vim.keymap.set('n', 'sa', vim.lsp.buf.code_action, {})

-- Show digaanostic 
vim.keymap.set('n', 'sd', vim.diagnostic.open_float, {})

local cmp = require('cmp')

cmp.setup({
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = false}),
  }
})
