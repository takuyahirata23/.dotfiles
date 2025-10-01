return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  opts = {
    strategies = {
      chat = {
        adapter = "copilot",
        model = "gpt-4.1",
        keymaps = {
          send = {
            modes = { n = "cs", i = "<C-s>" },
            opts = {},
          },
          close = {
            modes = { n = "<C-z>", i = "<C-z>" },
            opts = {},
          },
          -- Add further custom keymaps here
        },
      },
      inline = {
        adapter = "copilot",
      },
    },
    -- NOTE: The log_level is in `opts.opts`
    opts = {
      log_level = "DEBUG",
    },
  },
  keys = {
    {
      "tc",
      "<cmd>CodeCompanionChat Toggle<cr>"
    },
    {
      "ac",
      "<cmd>CodeCompanionChat Add<cr>"
    },
  }
}
