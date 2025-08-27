-- LSP Support
return {
  'neovim/nvim-lspconfig',
  event = 'VeryLazy',
  dependencies = {
    -- LSP Management
    -- https://github.com/williamboman/mason.nvim
    { 'williamboman/mason.nvim' },
    -- https://github.com/williamboman/mason-lspconfig.nvim
    { 'williamboman/mason-lspconfig.nvim' },

    -- Useful status updates for LSP
    -- https://github.com/j-hui/fidget.nvim
    { 'j-hui/fidget.nvim',                opts = {} },

    -- Additional lua configuration, makes nvim stuff amazing!
    -- https://github.com/folke/neodev.nvim
    { 'folke/neodev.nvim' },
  },
  config = function()
    require('mason').setup()
    require('mason-lspconfig').setup({
      -- Update this list to the language servers you need installed
      ensure_installed = {
        "html",
        "lua_ls",
        "jsonls",
        "ts_ls",
        "eslint",
        "tailwindcss",
        "elixirls"
      }
    })

    -- local lspconfig = require('lspconfig')
    -- local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
    -- local settings =
    -- {
    --   codeAction = {
    --     disableRuleComment = {
    --       enable = true,
    --       location = "separateLine"
    --     },
    --     showDocumentation = {
    --       enable = true
    --     }
    --   },
    --   codeActionOnSave = {
    --     enable = false,
    --     mode = "all"
    --   },
    --   experimental = {
    --     useFlatConfig = false
    --   },
    --   format = true,
    --   nodePath = "",
    --   onIgnoredFiles = "off",
    --   problems = {
    --     shortenToSingleLine = false
    --   },
    --   quiet = false,
    --   rulesCustomizations = {},
    --   run = "onType",
    --   useESLintClass = false,
    --   validate = "on",
    --   workingDirectory = {
    --     mode = "location"
    --   }
    -- }

    vim.keymap.set('n', 'sd', vim.diagnostic.open_float, {})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, {})

    -- vim.lsp.config('elixirls', {
    --   capabilities = lsp_capabilities,
    -- })

    -- vim.lsp.config('tailwindcss', {
    --   capabilities = lsp_capabilities,
    --   filetypes = { "html", "javascriptreact", "typescriptreact", "heex", "eelixir", "elixir" }
    -- })

    -- vim.lsp.enable('lua_ls')
    -- vim.lsp.enable('elixirls')
  end
}
