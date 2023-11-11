local o = vim.o

-- Encodings
o.encoding = "utf-8"
o.fileencoding = "utf-8"

-- Editor Options
o.colorcolumn = "90"
o.number = true
o.relativenumber = true
o.wrap = false 
o.clipboard = "unnamedplus"
o.syntax = "on"
o.autoindent = true
o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showmatch = true

-- Hide nvim's status bar
o.cmdheight = 0

-- Set the color theme
vim.cmd.colorscheme("gruvbox")
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
vim.o.termguicolors = true
