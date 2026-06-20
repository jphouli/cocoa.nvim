local M = {}

function M.setup(opts)
    vim.cmd("hi clear")
    vim.cmd("syntax reset")

    vim.o.background = opts.mode
    vim.g.colors_name = opts.style .. "-" .. opts.mode

    opts.palette = require("cocoa.palettes." .. opts.style .. "-" .. opts.mode)

    setupHighlights(opts)
end

function setupHighlights(opts)
    local palette = opts.palette
    local highlight = vim.api.nvim_set_hl

    highlight(0, "Normal", {
        fg = palette.fg,
        bg = palette.bg
    })

end

return M
