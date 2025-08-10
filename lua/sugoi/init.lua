local M = {}

-- Public: apply the theme. Intended to be called by :colorscheme sugoi only.
function M.setup(opts)
    opts = opts or {}

  vim.api.nvim_command("set termguicolors")
  vim.api.nvim_command("set background=dark")

  require('sugoi.colors').setup(opts)
  require('sugoi.theme').setup(opts)
  require('sugoi.plugins')
  require('sugoi.languages')

  vim.api.nvim_command(string.format('let g:colors_name = "%s"', 'sugoi'))
end

return M
