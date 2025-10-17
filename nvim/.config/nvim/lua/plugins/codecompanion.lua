return {
  "olimorris/codecompanion.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  lazy = false,
  opts = {
    strategies = {
      chat = {
        -- name = "copilot",
        -- model = "gpt-4.1",
        name = "copilot",
        model = "gpt-5",
        keymaps = {
          send = {
            modes = { n = "<Leader>s" },
            opts = {},
          },
          close = {
            modes = { n = "<C-z>", i = "<C-z>" },
            opts = {},
          }
          -- Add further custom keymaps here
        },
      },
      inline = {
        adapter = "copilot",
        model = "gpt-5"
      },
    },
    -- NOTE: The log_level is in `opts.opts`
    opts = {
      log_level = "DEBUG",
    },
  },
  keys = {
    {
      mode = { "n" }, -- Enable in normal and visual mode
      "<Leader>t",
      "<cmd>CodeCompanionChat Toggle<cr>",
    },
    {
      mode = { "n", "v" }, -- Enable in normal and visual mode
      "<Leader>a",
      "<cmd>CodeCompanionChat Add<cr>"
    }
  }
}

-- This configuration is in keymaps.lua
-- vim.keymap.set("v", "<Leader>i", function()
--   local user_arg = vim.fn.input("CodeCompanion command: ")
--   if user_arg == "" then return end

--   -- Run CodeCompanion with the argument
--   vim.cmd('CodeCompanion ' .. user_arg)
-- end)
