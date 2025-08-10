local Group = require('colorbuddy').Group
local colors = require('colorbuddy').colors
local styles = require('colorbuddy').styles

local parseStyleOpts = function(opts)
  return {
    italic = vim.tbl_get(opts, 'styles', 'italic') and styles.italic or styles.NONE,
    bold = vim.tbl_get(opts, 'styles', 'bold') and styles.bold or styles.NONE,
    underline = vim.tbl_get(opts, 'styles', 'underline') and styles.underline or styles.NONE,
    undercurl = vim.tbl_get(opts, 'styles', 'undercurl') and styles.undercurl or styles.NONE,
  }
end

-- We need this function because we can't do styles.NONE + styles.NONE (we need to ensure it's only added once)
local sumStyles = function(values)
  local sum = styles.NONE

  for _, value in ipairs(values) do
    if value ~= styles.NONE then
      sum = sum + value
    end
  end

  return sum
end

-- Dynamically determine best text color for a given background color
local textOnColor = function(color)
  local r, g, b = require('colorbuddy.util').hsl_to_rgb(color.base.H, color.base.S, color.base.L)

  r = r * 255
  g = g * 255
  b = b * 255

  -- Thx colorizer.nvim and stack overflow! <3
  -- https://stackoverflow.com/questions/596216/formula-to-determine-perceived-brightness-of-rgb-color
  local luminance = (0.299 * r + 0.587 * g + 0.114 * b) / 255

  if luminance > 0.5 then
    return colors.black
  else
    return colors.white
  end
end

local M = {}

function M.setup(opts)
  opts = opts or {}

  local s = parseStyleOpts(opts)

  -- Text on Primary / Secondary Background Colors
  -- NOTE: Experimental! Might not stay!
  Group.new('SugoiTextOnPrimary', textOnColor(colors.primary), colors.primary)
  Group.new('SugoiTextOnSecondary', textOnColor(colors.secondary), colors.secondary)

  -- Generic Highlighting
  Group.new('Normal', colors.foreground, colors.background)
  Group.new('Search', nil, colors.sugoi_8)
  Group.new('IncSearch', colors.sugoi_0, colors.sugoi_7)
  Group.new('Substitute', nil, colors.sugoi_8)
  Group.new('CurSearch', colors.sugoi_9, colors.sugoi_2)
  Group.new('Visual', nil, colors.sugoi_8)
  Group.new('SignColumn', nil, colors.background)
  Group.new('LineNr', colors.sugoi_8, colors.background)
  Group.new('EndOfBuffer', colors.sugoi_8, nil)

  Group.new('Comment', colors.sugoi_7)
  Group.new('Constant', colors.primary)
  Group.new('Character', colors.sugoi_5)
  Group.new('Identifier', colors.sugoi_0)
  Group.new('Statement', colors.sugoi_1)
  Group.new('PreProc', colors.primary)
  Group.new('Type', colors.secondary)
  Group.new('Special', colors.sugoi_5)
  Group.new('Error', colors.primary)
  Group.new('Todo', colors.primary, colors.sugoi_8)
  Group.new('Function', colors.sugoi_0)

  Group.new('ColorColumn', nil, colors.sugoi_8)
  Group.new('Conceal', colors.sugoi_7)
  Group.new('Cursor', nil)
  Group.new('CursorColumn', nil, colors.sugoi_9)
  Group.new('CursorLine', nil, colors.sugoi_9)
  Group.new('CursorLineNr', colors.sugoi_6, colors.sugoi_9)
  Group.new('Directory', colors.sugoi_3)
  Group.new('DiffAdd', colors.primary, colors.sugoi_8)
  Group.new('DiffChange', colors.sugoi_0, colors.sugoi_8)
  Group.new('DiffDelete', colors.secondary, colors.sugoi_8)
  Group.new('DiffText', colors.sugoi_0, colors.sugoi_7)
  Group.new('ErrorMsg', textOnColor(colors.diagnostic_error), colors.diagnostic_error)
  Group.new('VertSplit', colors.secondary, colors.sugoi_9)
  Group.new('WinSeparator', colors.secondary, colors.sugoi_9)
  Group.new('WinBar', colors.sugoi_4, colors.background, styles.bold)
  Group.new('WinBarNC', colors.sugoi_4, colors.background)

  Group.new('Folded', colors.sugoi_5, colors.sugoi_8)
  Group.new('FoldColumn', colors.sugoi_7)
  Group.new('MatchParen', nil, colors.sugoi_7)
  Group.new('MoreMsg', nil, colors.sugoi_6)
  Group.new('NonText', colors.sugoi_7, nil)
  Group.new('Pmenu', colors.sugoi_2, colors.sugoi_8)
  Group.new('PmenuSel', colors.sugoi_0, colors.sugoi_7)
  Group.new('PmenuSbar', nil, colors.sugoi_8)
  Group.new('PmenuThumb', nil, colors.sugoi_7)
  Group.new('Question', colors.sugoi_1, colors.sugoi_8)
  Group.new('SpecialKey', colors.sugoi_6, nil)
  Group.new('SpellBad', colors.primary)
  Group.new('SpellCap', colors.sugoi_0)
  Group.new('SpellLocal', colors.sugoi_5)
  Group.new('SpellRare', colors.primary)
  Group.new('StatusLine', colors.sugoi_5, colors.sugoi_8)
  Group.new('TabLine', colors.sugoi_3, colors.sugoi_8)
  Group.new('TabLineFill', nil, colors.sugoi_8)
  Group.new('TabLineSel', colors.sugoi_2, nil)
  Group.new('Title', colors.sugoi_3)
  Group.new('VisualNOS', colors.primary, colors.sugoi_8)
  Group.new('WarningMsg', colors.primary)
  Group.new('WildMenu', colors.sugoi_5, colors.sugoi_8)

  Group.new('FloatBorder', colors.secondary, colors.background)
  Group.new('FloatTitle', colors.secondary, colors.background)
  Group.new('NormalFloat', colors.sugoi_4)

  -- Treesitter Syntax Highlighting
  -- See :help treesitter-highlight-groups
  Group.new('@boolean', colors.primary)
  Group.new('@character', colors.secondary)
  Group.new('@character.special', colors.sugoi_2)
  Group.new('@comment', colors.sugoi_7)
  Group.new('@conditional', colors.sugoi_2)
  Group.new('@constant', colors.sugoi_2)
  Group.new('@constant.builtin', colors.sugoi_2)
  Group.new('@constant.macro', colors.primary)
  Group.new('@constructor', colors.sugoi_1)
  Group.new('@debug', colors.sugoi_2)
  Group.new('@define', colors.sugoi_2)
  Group.new('@exception', colors.sugoi_2)
  Group.new('@field', colors.sugoi_2)
  Group.new('@float', colors.sugoi_2)
  Group.new('@function', colors.sugoi_0)
  Group.new('@function.builtin', colors.sugoi_2)
  Group.new('@function.call', colors.sugoi_2)
  Group.new('@function.macro', colors.primary)
  Group.new('@include', colors.sugoi_6)
  Group.new('@keyword', colors.sugoi_5)
  Group.new('@keyword.function', colors.sugoi_5)
  Group.new('@keyword.operator', colors.sugoi_6)
  Group.new('@keyword.return', colors.sugoi_0)
  Group.new('@label', colors.sugoi_2)
  Group.new('@macro', colors.primary)
  Group.new('@method', colors.sugoi_1)
  Group.new('@method.call', colors.sugoi_2)
  Group.new('@namespace', colors.sugoi_2)
  Group.new('@none', colors.sugoi_3)
  Group.new('@number', colors.primary)
  Group.new('@operator', colors.sugoi_6)
  Group.new('@parameter', colors.sugoi_2)
  Group.new('@preproc', colors.sugoi_2)
  Group.new('@property', colors.sugoi_2)
  Group.new('@punctuation', colors.sugoi_2)
  Group.new('@punctuation.bracket', colors.sugoi_6)
  Group.new('@punctuation.delimiter', colors.sugoi_6)
  Group.new('@punctuation.special', colors.primary)
  Group.new('@repeat', colors.sugoi_2)
  Group.new('@storageclass', colors.sugoi_2)
  Group.new('@string', colors.primary)
  Group.new('@string.escape', colors.sugoi_2)
  Group.new('@string.special', colors.sugoi_2)
  Group.new('@structure', colors.sugoi_2)
  Group.new('@tag', colors.sugoi_6)
  Group.new('@tag.attribute', colors.sugoi_4)
  Group.new('@tag.delimiter', colors.sugoi_3)
  Group.new('@text.literal', colors.secondary)
  Group.new('@text.reference', colors.secondary)
  Group.new('@text.title', colors.sugoi_2)
  Group.new('@text.todo', colors.sugoi_2)
  Group.new('@text.underline', colors.sugoi_2)
  Group.new('@text.uri', colors.sugoi_2)
  Group.new('@type', colors.sugoi_2)
  Group.new('@identifier', colors.sugoi_0)
  Group.new('@type.builtin', colors.sugoi_6)
  Group.new('@type.definition', colors.sugoi_2)
  Group.new('@variable', colors.secondary)
  Group.new('@variable.builtin', colors.sugoi_2)
  Group.new('@lsp.type.function', colors.sugoi_0)
  Group.new('@lsp.type.macro', colors.primary)
  Group.new('@lsp.type.method', colors.sugoi_2)

  -- Inlay Hints
  Group.new('LspInlayHint', colors.sugoi_6, colors.sugoi_8)

  -- Semantic Highlighting
  Group.new('DiagnosticError', colors.diagnostic_error, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticWarn', colors.diagnostic_warning, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticInfo', colors.diagnostic_info, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticHint', colors.diagnostic_hint, nil, sumStyles({ s.bold, s.italic, s.undercurl }))
  Group.new('DiagnosticSignError', colors.diagnostic_error)
  Group.new('DiagnosticSignWarn', colors.diagnostic_warning)
  Group.new('DiagnosticSignInfo', colors.diagnostic_info)
  Group.new('DiagnosticSignHint', colors.diagnostic_hint)
  Group.new('DiffAdd', colors.diff_add)
  Group.new('DiffChange', colors.diff_change)
  Group.new('DiffDelete', colors.diff_delete)

  -- Override Colorbuddy Defaults
  Group.new('string', colors.primary)
end

return M
