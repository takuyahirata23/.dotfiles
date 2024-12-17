return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  opts = {
    highlight = {
      enable = true,
    },
    indent = { enable = ture },
    auto_install = true,
    ensure_installed = {
      "javascript",
      "typescript",
      "elixir",
      "heex",
      "tsx",
      "lua",
      "vim",
      "vimdoc", 
      "query", 
      "sql", 
      "rust",
      "css",
      "gitignore"
    }
  },
  config = function(_, opts)
    local configs = require("nvim-treesitter.configs")
    configs.setup(opts)
  end
}
