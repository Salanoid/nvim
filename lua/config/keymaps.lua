-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- remaps for github copilot
local map = vim.keymap.set

local function accept_word()
  vim.fn["copilot#Accept"]("")
  local bar = vim.fn["copilot#TextQueuedForInsertion"]()
  return vim.fn.split(bar, [[[ .]\zs]])[1]
end

local function accept_line()
  vim.fn["copilot#Accept"]("")
  local bar = vim.fn["copilot#TextQueuedForInsertion"]()
  return vim.fn.split(bar, [[[\n]\zs]])[1]
end

vim.g.copilot_no_tab_map = true

map("i", "<M-j>", "<Plug>(copilot-next)", {})
map("i", "<M-k>", "<Plug>(copilot-previous)", {})
map("i", "<M-p>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
map("i", "<M-o>", accept_word, { expr = true, remap = false })
map("i", "<M-i>", accept_line, { expr = true, remap = false })
