-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.relativenumber = false

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':windcmd k<CR>')
vim.keymap.set('n', '<c-j>', ':windcmd j<CR>')
vim.keymap.set('n', '<c-h>', ':windcmd h<CR>')
vim.keymap.set('n', '<c-l>', ':windcmd l<CR>')

