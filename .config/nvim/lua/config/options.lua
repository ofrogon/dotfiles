-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
local cmd = vim.cmd
local keymap = vim.keymap

opt.relativenumber = true

cmd("set expandtab")
cmd("set tabstop=2")
cmd("set softtabstop=2")
cmd("set shiftwidth=2")

-- Navigate vim panes better
keymap.set("n", "<c-k>", ":windcmd k<CR>")
keymap.set("n", "<c-j>", ":windcmd j<CR>")
keymap.set("n", "<c-h>", ":windcmd h<CR>")
keymap.set("n", "<c-l>", ":windcmd l<CR>")
