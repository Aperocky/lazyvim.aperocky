-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.number = true -- Show line numbers
opt.relativenumber = true -- Relative line numbers

opt.expandtab = true -- Use spaces instead of tabs
opt.wrap = true -- Enable line wrapping
opt.linebreak = true -- Wrap lines at convenient points
opt.hlsearch = true -- Highlight search results

opt.tabstop = 4 -- 4 is sane
opt.shiftwidth = 4
