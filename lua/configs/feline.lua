-- "┃", "█", "", "", "", "", "", "", "●", ""

local feline = require('feline')
local lsp = require('feline.providers.lsp')
local vi_mode = require('feline.providers.vi_mode')

-- desert sun theme
local theme = {
  bg = '#171616',
  textDark = '#171616',
  textLight = '#ffdbc3',
  mode = '#c57c4d',
  err = '#872026',
  warn = '#ffd156',
}

-- Returns a function that colors a feline component
local function color(fg, bg)
  return function()
    return { fg=fg, bg=bg }
  end
end

-- provides a formated string function for the provider member
-- of a status line component
local function provide(provider)
  return function(component, opts)
    return " " .. provider(component, opts) .. " "
  end
end

-- Gets the current vim mode
local function get_vim_mode(component, opts)
  return vi_mode.get_vim_mode()
end

-- Gets the current number of errors for the buffer
local function get_error_count(component, opts)
  return "● " .. lsp.get_diagnostics_count('Error') 
end

-- Gets the current number of warnings for the buffer
local function get_warn_count(component, opts)
  return "● " .. lsp.get_diagnostics_count('Warn') 
end

-- Gets the current number of info points for the buffer
local function get_info_count(component, opts)
  return "● " .. lsp.get_diagnostics_count('Info')
end

local left = {
  -- Vim mode
  {
    name = "mode",
    provider = provide(get_vim_mode),
    hl = color(theme.textDark, theme.mode),
  },

  -- File name
  {
    name = "file",
    provider = { 
      name = "file_info", 
      opts = { colored_icon=false, file_modified_icon="" } 
    },
    hl = color(theme.textLight, theme.bg),
    left_sep = " "
  },

  -- Number of errors
  {
    name = "errors",
    provider = provide(get_error_count),
    hl = color(theme.err, theme.bg)
  },
  
  -- Number of warnings
  {
    name = "warnings",
    provider = provide(get_warn_count),
    hl = color(theme.warn, theme.bg)
  },

  -- Number of infos
  {
    name = "info",
    provider = provide(get_info_count),
    hl = color(theme.warnLight, theme.bg)
  },
}

local right = {
  -- Git status
  {
    name = "git",
    icon = "",
    provider = "git_branch",
    hl = color(theme.text, theme.light_grey),
    left_sep = "",
    right_sep = "",
  } 
}

feline.setup({
  theme = theme,
  components = { 
    active = { left, right }, 
    inactive = { left, right } 
  },
  highlight_reset_triggers = {}
})
