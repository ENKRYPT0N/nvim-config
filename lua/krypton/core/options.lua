vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true
vim.opt.smartindent = true
vim.opt.wrap = false

-- Enable Mouse --
vim.opt.mouse = "a"

vim.opt.scrolloff = 8
vim.opt.virtualedit = "onemore"

-- Some Searching Options --
vim.o.ignorecase = true
vim.o.smartcase = true

vim.o.confirm = true

-- To Undo After Nvim Close --
vim.o.undofile = true

-- Use System Clipboard --
vim.o.clipboard = 'unnamedplus'

-- Mode Showed In LuaLine --
vim.o.showmode = false

vim.opt.signcolumn = "yes"
vim.opt.termguicolors = true

vim.o.updatetime = 250
vim.o.timeoutlen = 900

vim.o.splitright = true
vim.o.splitbelow = true

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Yank (copy) Highlight --
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

--[[
-- Spaces Number For <Tab> Per File Types
--]]

vim.api.nvim_create_autocmd("FileType", {
  pattern = { 
    "lua", "html", "javascript", "css",
    "typescript", "typescriptreact", "yuck" },
  callback = function()
    vim.bo.tabstop = 2
    vim.bo.shiftwidth = 2
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "rust"},
  callback = function()
    vim.bo.tabstop = 4
    vim.bo.shiftwidth = 4
    vim.bo.expandtab = true
  end,
})

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "make" },
  callback = function()
    vim.bo.tabstop = 8
    vim.bo.shiftwidth = 8
    vim.bo.expandtab = false
  end,
})
