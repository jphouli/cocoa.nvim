local M = {}

function M.setup(opts)
    vim.cmd('hi clear')
    vim.cmd('syntax reset')

    vim.g.colors_name = opts.style
    vim.o.background = opts.mode

    require('cocoa.color_groups.base').setup()
end

return M
