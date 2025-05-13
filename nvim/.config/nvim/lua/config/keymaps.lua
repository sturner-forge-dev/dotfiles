-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.api.nvim_set_keymap(
  "n",
  "<leader>cL",
  "yiwoconsole.log('<C-r>0', <C-r>0);<Esc>",
  { desc = "Log word under cursor to console", noremap = true }
)

vim.api.nvim_set_keymap(
  "v",
  "<leader>cL",
  "yoconsole.log('<C-r>0', <C-r>0);<Esc>",
  { desc = "Log selected text to console", noremap = true }
)
