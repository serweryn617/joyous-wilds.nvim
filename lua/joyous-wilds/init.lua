local groups = require('joyous-wilds.groups')

local M = {}

M.setup = function()
  if vim.g.colors_name then
    vim.cmd.hi("clear")
  end

  vim.g.colors_name = 'joyous-wilds'
  vim.o.termguicolors = true

  for group, settings in pairs(groups) do
    vim.api.nvim_set_hl(0, group, settings)
  end
end

return M
