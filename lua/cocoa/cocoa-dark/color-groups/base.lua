local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.dusty_brown,
            bg = palette.muted_sage_gray
        },
        NonText = {
            fg = palette.dusty_brown,
            bg = palette.muted_sage_gray
        },
        PreProc = {
            fg = palette.olive_green,
            bg = palette.muted_sage_gray
        },
        String = {
            fg = palette.spring_green,
            bg = palette.muted_sage_gray
        },
        Type = {
            fg = palette.coral,
            bg = palette.muted_sage_gray
        }
    }
end

return M
