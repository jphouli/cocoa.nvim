local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.light_peach,
            bg = palette.forest
        },
        NonText = {
            fg = palette.tan_700,
            bg = palette.forest
        },
        PreProc = {
            fg = palette.tan_700,
            bg = palette.forest
        },
        String = {
            fg = palette.coral_300,
            bg = palette.forest
        },
        Type = {
            fg = palette.tan_300,
            bg = palette.forest
        },
        Statement = {
            fg = palette.terracotta_300,
            bg = palette.forest
        },
        Identifier = {
            fg = palette.terracotta_700,
            bg = palette.forest
        },
        Function = {
            fg = palette.coral_500,
            bg = palette.forest
        },
        Constant = {
            fg = palette.terracotta_500,
            bg = palette.forest
        },
        Special = {
            fg = palette.coral_700,
            bg = palette.forest
        }
    }
end

return M
