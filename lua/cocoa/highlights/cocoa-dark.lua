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
    highlight(0, "CursorLine", {
        fg = palette.bg,
        bg = palette.light_orange
    })
    highlight(0, "LineNr", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "CursorLineNr", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "Visual", {
        fg = palette.bg,
        bg = palette.light_orange
    })
    highlight(0, "Search", {
        fg = palette.bg,
        bg = palette.light_orange
    })
    highlight(0, "Pmenu", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "PmenuSel", {
        fg = palette.bg,
        bg = palette.light_orange
    })
    highlight(0, "Comment", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "Identifier", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "Type", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "Keyword", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "Structure", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@variable", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@function.call", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@method.call", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@parameter", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@field", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@property", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@constructor", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@keyword.return", {
        fg = palette.light_orange,
        bg = palette.bg
    })
    highlight(0, "@tag", {
        fg = palette.light_orange,
        bg = palette.bg
    })

end

return M
