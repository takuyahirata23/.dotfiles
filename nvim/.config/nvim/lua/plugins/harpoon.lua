return {
  "ThePrimeagen/harpoon",
  dependencies = {
    -- https://github.com/nvim-lua/plenary.nvim
    'nvim-lua/plenary.nvim',
  },
  opts = {
    menu = {
      width = 120
    }
  },
  config = function(_, opts)
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set('n', 'ah', mark.add_file, {})
    vim.keymap.set('n', 'lh', ui.toggle_quick_menu, {})
  end
}
