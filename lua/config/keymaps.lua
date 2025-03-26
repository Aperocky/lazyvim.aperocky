-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("v", "<C-c>", '"+y')

-- s is for replace char.
vim.keymap.del("n", "s")

vim.keymap.set("n", "<C-s>", function()
  require("flash").jump()
end, { desc = "Flash" })

vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show line diagnostics" })
