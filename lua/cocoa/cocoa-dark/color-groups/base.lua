local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.coral_25,
            bg = palette.olive_gray
        },
        NonText = {
            fg = palette.coral_25,
            bg = palette.olive_gray
        },
        PreProc = {
            fg = palette.coral_25,
            bg = palette.olive_gray
        },
        String = {
            fg = palette.coral_50,
            bg = palette.olive_gray
        },
        Type = {
            fg = palette.coral_100,
            bg = palette.olive_gray
        }
    }
end

return M
