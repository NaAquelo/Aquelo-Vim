local o = vim.o

-- Encodings
vim.scriptencoding = "utf-8"

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
o.encoding = "utf-8"
o.ruler = true
o.mouse = "a"
o.title = true
o.hidden = true
o.ttimeoutlen = 0
o.wildmenu = true
o.showcmd = true
o.showmatch = true

-- Set the color theme
function SetColor(color)
  color = color or "gruvbox"
  vim.cmd.colorscheme(color)

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColor()

