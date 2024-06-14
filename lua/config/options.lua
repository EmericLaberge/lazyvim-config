-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- lua/emeric/core/options.lua
local opt = vim.opt
opt.relativenumber = true
opt.number = true
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.wrap = true
opt.linebreak = true
opt.textwidth = 80
opt.ignorecase = true
opt.smartcase = true
opt.cursorline = true
opt.colorcolumn = "80"
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"
opt.backspace = "indent,eol,start"
opt.clipboard = "unnamedplus"
opt.splitright = true
opt.splitbelow = true
opt.iskeyword:append("-")
