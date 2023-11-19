require("kevin-illu.options")
require("kevin-illu.highlights")
require("kevin-illu.maps")
require("kevin-illu.plugins")


local has = vim.fn.has
local is_win = has "win32"

xpcall(function()
  vim.cmd('colorscheme everforest')
end, function()
  vim.cmd('colorscheme murphy')
end)

if is_win then
  vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
end
