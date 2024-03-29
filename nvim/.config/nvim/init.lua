local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- This has to be set before initializing Lazy
vim.g.mapleader = " "
vim.g.user_emmet_leader_key="<Tab>"

-- Initialize Lazy
require("lazy").setup("plugins", opts)

require("core.options")
require("core.keymaps")
