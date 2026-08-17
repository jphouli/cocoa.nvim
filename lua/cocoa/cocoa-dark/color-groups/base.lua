local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.dusty_brown,
            bg = palette.olive_gray
        },
        NonText = {
            fg = palette.dusty_brown,
            bg = palette.olive_gray
        },
        PreProc = {
            fg = palette.olive_green,
            bg = palette.olive_gray
        },
        String = {
            fg = palette.spring_green,
            bg = palette.olive_gray
        },
        Type = {
            fg = palette.coral,
            bg = palette.olive_gray
        }
    }
end

return M
