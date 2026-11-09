-- luacheck: globals vim
---@diagnostic disable: undefined-global
local Color = require('colorbuddy').Color
local colors = require('colorbuddy').colors

local M = {}

function M.getPalette(palette)
  if type(palette) == 'table' then
    return palette
  end
  return require('sugoi.palettes.' .. palette)
end

function M.mergeWithPalette(palette, merge)
  return vim.tbl_extend('force', M.getPalette(palette), merge)
end

function M.all()
  local c = {}

  for name,_ in pairs(colors) do
    c[name] = colors[name]:to_vim()
  end

  return c;
end

function M.setup(opts)
  local palette = M.getPalette(opts.palette or 'default')

  local getConfiguredColor = function(color)
    return opts.colors and opts.colors[color] or palette[color]
  end

  -- Set up background color
  -- Can be configured by palette or end user
  Color.new('background', getConfiguredColor('background'))
  Color.new('foreground', getConfiguredColor('foreground'))

  -- Set up primary and secondary flavor colors
  -- Can be configured by palette or end user
  Color.new('primary', getConfiguredColor('primary'))
  Color.new('secondary', getConfiguredColor('secondary'))
  Color.new('accent', getConfiguredColor('accent'))

  -- Set up semantic color palette
  -- These are to be used sparingly, but have semantic meaning for things like lsp diagnostics, git diffs, etc.
  -- Can be configured by palette or end user
  Color.new('diagnostic_error', getConfiguredColor('diagnostic_error'))
  Color.new('diagnostic_warning', getConfiguredColor('diagnostic_warning'))
  Color.new('diagnostic_info', getConfiguredColor('diagnostic_info'))
  Color.new('diagnostic_hint', getConfiguredColor('diagnostic_hint'))
  Color.new('diff_add', getConfiguredColor('diff_add'))
  Color.new('diff_change', getConfiguredColor('diff_change'))
  Color.new('diff_delete', getConfiguredColor('diff_delete'))
  Color.new('sugoi_0', getConfiguredColor('sugoi_0'))
  Color.new('sugoi_1', getConfiguredColor('sugoi_1'))
  Color.new('sugoi_2', getConfiguredColor('sugoi_2'))
  Color.new('sugoi_3', getConfiguredColor('sugoi_3'))
  Color.new('sugoi_4', getConfiguredColor('sugoi_4'))
  Color.new('sugoi_5', getConfiguredColor('sugoi_5'))
  Color.new('sugoi_6', getConfiguredColor('sugoi_6'))
  Color.new('sugoi_7', getConfiguredColor('sugoi_7'))
  Color.new('sugoi_8', getConfiguredColor('sugoi_8'))
  Color.new('sugoi_9', getConfiguredColor('sugoi_9'))

  -- Pure black and white for text on dynamic background colors
  Color.new('black', '#000000')
  Color.new('white', '#FFFFFF')

  -- Pure black and white for text on dynamic background colors
  Color.new('none', 'NONE')

  -- Sidebar and Floats are configurable

  colors.bg_float = opts.transparent and colors.none or colors.background
end

return M
