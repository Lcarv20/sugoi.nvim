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

  -- Respect explicit background override from opts if provided
  if opts.background == 'light' or opts.background == 'dark' then
    vim.o.background = opts.background
  end

  -- Auto-select palette based on current background unless explicitly set
  local bg = vim.o.background or 'dark'
  local palette_name = opts.palette
  if not palette_name or palette_name == 'auto' then
    palette_name = (bg == 'light') and 'light' or 'default'
  end
  local effective_opts = vim.tbl_extend('force', opts, { palette = palette_name })

  require('sugoi.colors').setup(effective_opts)
  require('sugoi.theme').setup(effective_opts)
  require('sugoi.plugins')
  require('sugoi.languages')

  vim.api.nvim_command('let g:colors_name = "sugoi"')
end

return M
