local global = vim.g
local map = vim.keymap

global.mapleader = " "

-- Nvim config remaps
map.set("n", "<leader>so", ":w<Enter>:source%<Enter>")

-- Quick movement
map.set("i", "jj", "<Esc>")
map.set("i", "kk", "<Esc>")
map.set("n", "J", "G")
map.set("n", "K", "gg")
map.set("n", "H", "^")
map.set("n", "L", "$")
map.set("v", "H", "0")
map.set("v", "L", "$h")

-- File remaps
map.set("n", "s", ":w<CR>")

-- Remap paste command
map.set('n', 'pp', 'p')

-- Exit terminal mode
map.set('t', 'jj', '<C-\\><C-n>:bd!<CR>')
