-- luacheck: globals vim
---@diagnostic disable: undefined-global
local M = {}

-- Store user options set via require('sugoi').setup(opts)
M._opts = nil

-- Prepare theme options without applying the colorscheme.
-- Users can call :colorscheme sugoi (or require('sugoi').apply()) later to apply.
function M.setup(opts)
  M._opts = opts or {}
  -- Also expose opts globally so :colorscheme sugoi can pick them up across modules
  vim.g.sugoi_opts = M._opts
end

local function get_effective_opts()
  -- Prefer module-local opts, fallback to global, then defaults
  return M._opts or vim.g.sugoi_opts or {}
end

-- Apply the theme. Intended to be called by :colorscheme sugoi.
function M.apply()
  local opts = get_effective_opts()

  vim.api.nvim_command("set termguicolors")
  vim.api.nvim_command("set background=dark")

  require('sugoi.colors').setup(opts)
  require('sugoi.theme').setup(opts)
  require('sugoi.plugins')
  require('sugoi.languages')

  vim.api.nvim_command('let g:colors_name = "sugoi"')
end

return M
