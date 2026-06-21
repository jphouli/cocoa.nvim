local M = {}

function M.setup()
    vim.o.background = "dark"
    vim.g.colors_name = "cocoa-dark"

    local palette = require("cocoa.palettes.cocoa-dark")
    local highlight = vim.api.nvim_set_hl

    highlight(0, "Normal", {
        fg = palette.light_red,
        bg = palette.bg
    })
    highlight(0, "Statement", {
        fg = palette.light_yellow,
        bg = palette.bg
    })
    highlight(0, "Delimiter", {
        fg = palette.light_yellow_green,
        bg = palette.bg
    })
    highlight(0, "PreProc", {
        fg = palette.light_green,
        bg = palette.bg
    })
    highlight(0, "Special", {
        fg = palette.light_green,
        bg = palette.bg
    })
    highlight(0, "Operator", {
        fg = palette.light_yellow_green,
        bg = palette.bg
    })
    highlight(0, "Constant", {
        fg = palette.red,
        bg = palette.bg
    })
    highlight(0, "Function", {
        fg = palette.orange,
        bg = palette.bg
    })
    highlight(0, "String", {
        fg = palette.yellow,
        bg = palette.bg
    })
    highlight(0, "EndOfBuffer", {
        fg = palette.light_red,
        bg = palette.bg
    })
    highlight(0, "@variable", {
        fg = palette.light_orange,
        bg = palette.bg
    })

end

return M
