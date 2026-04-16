-- Auto-completion / Snippets
return {
  -- https://github.com/hrsh7th/nvim-cmp
  'hrsh7th/nvim-cmp',
  event = 'InsertEnter',
  dependencies = {
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',

  },
  config = function()
    local cmp = require('cmp')

    vim.opt.completeopt = "menu,menuone,noselect"

    cmp.setup({
      mapping = cmp.mapping.preset.insert({
        ["<C-p>"] = cmp.mapping.select_prev_item(), -- previous suggestion
        ["<C-n>"] = cmp.mapping.select_next_item(), -- next suggestion
        -- ["<C-b>"] = cmp.mapping.scroll_docs(-4), -- scroll backward
        -- ["<C-f>"] = cmp.mapping.scroll_docs(4), -- scroll forward
        --["<C-e>"] = cmp.mapping.abort(),                    -- clear completion window
        ["<CR>"] = cmp.mapping.confirm({ select = false }), -- confirm selection
        ['<C-i>'] = cmp.mapping.complete()
      }),
      window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" }, -- lsp
        --{ name = "buffer" },   -- text within current buffer
        { name = "path" },     -- file system paths
      }),
    })
  end,
}
