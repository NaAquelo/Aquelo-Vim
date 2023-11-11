" Colors
let primary = '#c57c4d'
let secondary = '#ba3f1d'
let primaryLight = '#ffdbc3'
let secondaryLight = '#d6977d'
let dark = '#171616'
let lightGrey = '#6a6a6a'
let darkGrey = '#4a4a4a'
let light = '#ffffff'
let error = '#872026'
let warning = '#ffd156'

:set termguicolors

" Coloring functions
function! ColorFg(group, color)
  execute ('hi! ' . a:group . ' guifg=' . a:color)
endfunction

function! ColorBg(group, color)
  execute ('hi! ' . a:group . ' guibg=' . a:color)
endfunction

" Set the colors
call ColorFg('SpecialKey', primaryLight)

call ColorFg('NonText', dark)

call ColorFg('TermCursor', dark)
call ColorBg('TermCursor', dark)

call ColorFg('Directory', primaryLight)

call ColorFg('ErrorMsg', error)
call ColorBg('ErrorMsg', dark)

call ColorFg('IncSearch', dark)

call ColorFg('Search', primaryLight)
call ColorBg('Search', dark)

call ColorFg('MoreMsg', primaryLight)

call ColorFg('ModeMsg', primaryLight)

call ColorFg('LineNr', lightGrey)
call ColorFg('LineNrAbove', darkGrey)
call ColorFg('LineNrBelow', darkGrey)
call ColorFg('CursorLineNr', darkGrey)

call ColorFg('SignColumn', dark)
call ColorBg('SignColumn', dark)

call ColorFg('FoldColumn', dark)
call ColorBg('FoldColumn', dark)

call ColorFg('Question', warning)

call ColorFg('StatusLine', dark)
call ColorBg('StatusLine', primaryLight)

call ColorFg('StatusLineNc', dark)
call ColorBg('StatusLineNc', primaryLight)

call ColorFg('Normal', light)

call ColorFg('Title', primary)

call ColorFg('Visual', darkGrey)
call ColorBg('Visual', primaryLight)

call ColorFg('VisualNc', darkGrey)
call ColorBg('VisualNc', primaryLight)

call ColorFg('WarningMsg', warning)

call ColorFg('WildMenu', primaryLight)
call ColorBg('WildMenu', dark)

call ColorFg('CocFloating', light)
call ColorBg('CocFloating', dark)
call ColorFg('PmenuSel', primaryLight)
call ColorBg('PmenuSel', dark)
call ColorBg('CocFloatingBorder', light)
call ColorFg('CocSearch', primaryLight)

call ColorFg('Comment', primaryLight)
