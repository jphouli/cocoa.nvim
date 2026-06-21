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
end

return M
