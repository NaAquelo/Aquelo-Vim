local builtin = require('telescope.builtin')
local actions = require('telescope.actions')

vim.keymap.set('n', '<leader>pv', builtin.find_files, {})

require('telescope').setup {
  defaults = {
    mappings = {
     i = {
       ['J']  = actions.move_selection_next,
       ['K']  = actions.move_selection_previous,
       ['X']  = actions.close,
       ['  '] = actions.select_default,
     },
    },
  },
  pickers = {},
  extensions = {},
}
