-- ~/.config/nvim/lua/krypton/lazy/init.lua
local uv = vim.uv or vim.loop
local datadir  = vim.fn.stdpath("data")                -- e.g. ~/.local/share/nvim OR ~/.local/nvim
local lazydir  = datadir .. "/lazy"
local lazypath = lazydir .. "/lazy.nvim"

-- ensure parent folder exists (git won't create all parents)
vim.fn.mkdir(lazydir, "p")

if not uv.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)
require("lazy").setup({
  { import = "krypton.lazy.plugins" },
}, {
  lockfile = vim.fn.stdpath("config") .. "/lazy-lock.json",
})

require("krypton.lazy.keymaps")
