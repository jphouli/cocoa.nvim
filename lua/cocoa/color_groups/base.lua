local M = {}

function getBaseColorGroups(palette)
    return {
        Normal = {
            bg = palette.black
        }
    }
end

function M.setup()
    local highlight = vim.api.nvim_set_hl
    local palette = require('cocoa.palettes.cocoa')

    for group, color in pairs(getBaseColorGroups(palette)) do
        highlight(0, group, color)
    end
end

return M
