local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.coral_25,
            bg = palette.forest
        },
        NonText = {
            fg = palette.coral_25,
            bg = palette.forest
        },
        PreProc = {
            fg = palette.coral_25,
            bg = palette.forest
        },
        String = {
            fg = palette.coral_50,
            bg = palette.forest
        },
        Type = {
            fg = palette.coral_100,
            bg = palette.forest
        },
        Statement = {
            fg = palette.coral_50,
            bg = palette.forest
        }
    }
end

return M
