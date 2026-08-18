local M = {}

function M.setup()
    local palette = require('cocoa.cocoa-dark.palette')
    local base = require('cocoa.cocoa-dark.color-groups.base').setup(palette)

    for group, color in pairs(base) do
        vim.api.nvim_set_hl(0, group, color)
    end
end

return M
