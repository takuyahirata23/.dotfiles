local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing Lazy
vim.g.mapleader = " "
vim.g.user_emmet_leader_key = "<Tab>"

-- Initialize Lazy
-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- Override LSP floating preview to add padding (borders + padding)
local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
  opts = opts or {}
  opts.border = "rounded"               -- "single", "double", "rounded", "solid", "shadow"
  opts.max_width = opts.max_width or 80 -- optional width limit
  opts.pad_left = 1                     -- add 1 column padding left
  opts.pad_right = 1                    -- add 1 column padding right
  return orig_util_open_floating_preview(contents, syntax, opts, ...)
end

require("core.options")
require("core.keymaps")
