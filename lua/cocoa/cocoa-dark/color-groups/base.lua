local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.light_peach,
            bg = palette.forest
        },
        NonText = {
            fg = palette.tan_80,
            bg = palette.forest
        },
        PreProc = {
            fg = palette.tan_65,
            bg = palette.forest
        },
        String = {
            fg = palette.coral_80,
            bg = palette.forest
        },
        Type = {
            fg = palette.tan_65,
            bg = palette.forest
        },
        Statement = {
            fg = palette.terracotta_65,
            bg = palette.forest
        },
        Identifier = {
            fg = palette.terracotta_80,
            bg = palette.forest
        },
        Function = {
            fg = palette.coral_65,
            bg = palette.forest
        },
        Constant = {
            fg = palette.coral_65,
            bg = palette.forest
        },
        Special = {
            fg = palette.tan_65,
            bg = palette.forest
        },
        Operator = {
            fg = palette.tan_80,
            bg = palette.forest
        },
        Delimiter = {
            fg = palette.tan_80,
            bg = palette.forest
        },
        ['@variable'] = {
            fg = palette.terracotta_80,
            bg = palette.forest
        }
    }
end

return M
