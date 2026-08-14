local M = {}

function M.setup()
    vim.cmd('hi clear')
    vim.cmd('syntax reset')

    vim.g.colors_name = 'cocoa'
    vim.o.background = 'dark'

    require('cocoa.color_groups.base').setup()
end

return M
