local M = {}

function M.setup(opts)
    vim.cmd("hi clear")
    vim.cmd("syntax reset")

    require("cocoa.highlights." .. opts.style .. "-" .. opts.mode).setup()
end

return M
