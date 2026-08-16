local M = {}

function M.setup(options)
    vim.cmd('hi clear')
    vim.cmd('syntax reset')

    vim.g.colors_name = options.style or 'cocoa'
    vim.o.background = options.mode or 'dark'

    require(options.style + '-' + options.mode).setup()
end

return M
