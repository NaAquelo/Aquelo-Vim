local global = vim.g
local map = vim.keymap

global.mapleader = " "

-- Nvim config remaps
map.set("n", "<leader>so", ":w<Enter>:source%<Enter>")

-- Quick movement
map.set("i", "jj", "<Esc>jk")
map.set("i", "kk", "<Esc>jk")
map.set("n", "J", "G")
map.set("n", "K", "gg")
map.set("n", "H", "^")
map.set("n", "L", "$")
map.set("v", "H", "0")
map.set("v", "L", "$h")
map.set("v", "J", "G")
map.set("v", "K", "gg")

-- Default remaps
map.set("n", "p", '"0p', { noremap=true  })
map.set("v", "p", '"0p', { noremap=true })
map.set("n", "<S-p>", '"1p', { noremap=true  })
map.set("n", "<S-d>", 'dd', { noremap=true })
map.set("n", "y", "vy", { noremap=true })
map.set("n", "<S-y>", "^v$hy", { noremap=true })

-- File remaps
map.set("n", "s", ":w<CR>jk")

-- Exit terminal mode
map.set('t', 'jj', '<C-\\><C-n>:bd!<CR>')

-- Remap command mode <CR> to keep feline status line showing
map.set('c', '<CR>', '<CR>jk')

-- Syntax commands
map.set('n', '<leader>;', '$a;<Esc>')
