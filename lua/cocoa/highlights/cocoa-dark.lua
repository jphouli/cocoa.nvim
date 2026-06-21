local M = {}

function M.setup()
    vim.o.background = "dark"
    vim.g.colors_name = "cocoa-dark"

    local palette = require("cocoa.palettes.cocoa-dark")
    local highlight = vim.api.nvim_set_hl

    highlight(0, "Normal", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "Statement", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "Delimiter", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "Special", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "Operator", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "Constant", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "Function", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "String", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "EndOfBuffer", {
        fg = palette.fg,
        bg = palette.bg
    })
    highlight(0, "@variable", {
        fg = palette.fg,
        bg = palette.bg
    })

end

return M
