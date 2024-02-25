-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- floating terminal
local Util = require("lazyvim.util")

-- Terminal Mappings
local lazyterm = function()
  Util.terminal(nil, { cwd = Util.root() })
end
vim.keymap.set("n", "<c-`>", lazyterm, { desc = "Terminal (root dir)" })
vim.keymap.set("t", "<C-`>", "<cmd>close<cr>", { desc = "Hide Terminal" })
