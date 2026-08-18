local M = {}

local colorGroupsList = {'base', 'treesitter', 'oil'}

function M.setup()
    local palette = require('cocoa.cocoa-dark.palette')

    for colorGroup in colorGroupsList do
        local groupHighlights = require('cocoa.cocoa-dark.color-groups.' .. colorGroup).setup(palette)

        for highlight, color in pairs(groupHighlights) do
            vim.api.nvim_set_hl(0, highlight, color)
        end
    end
end

return M
