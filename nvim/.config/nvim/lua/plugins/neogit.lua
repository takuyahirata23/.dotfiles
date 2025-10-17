return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",  -- required
    "sindrets/diffview.nvim", -- optional - Diff integration

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
  },
  config = function()
    local neogit = require("neogit")
    neogit.setup({
      kind = "floating", -- open in floating window
    })

    -- Keymap: 'gs' to open Neogit
    vim.keymap.set("n", "gs", function()
      neogit.open()
    end, { desc = "Open Neogit (floating)" })
  end,
}
