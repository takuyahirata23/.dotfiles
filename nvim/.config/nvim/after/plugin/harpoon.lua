local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set('n', 'ah', mark.add_file, {})
vim.keymap.set('n', 'lh', ui.toggle_quick_menu, {})
