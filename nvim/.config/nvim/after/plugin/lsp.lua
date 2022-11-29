-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())
-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
require('lspconfig')['tsserver'].setup {
  capabilities = capabilities
}

require'lspconfig'.tailwindcss.setup{
  capabilities = capabilities
}

require('lspconfig')['elixirls'].setup {
  capabilities = capabilities,
  cmd = { "/Users/takuyahirata/elixir-ls/language_server.sh" };
}

require'nvim-treesitter.configs'.setup {
  ensure_installed = { "javascript", "typescript", "elixir", "heex", "tsx" }, 
  highlight = {
    enable = true,             
  }
  -- indent = {
  --   enable = true
  -- }
}
