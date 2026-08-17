local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.dusty_brown,
            bg = palette.olive_charcoal
        },
        NonText = {
            fg = palette.dusty_brown,
            bg = palette.olive_charcoal
        },
        PreProc = {
            fg = palette.olive_green,
            bg = palette.olive_charcoal
        },
        String = {
            fg = palette.spring_green,
            bg = palette.olive_charcoal
        },
        Type = {
            fg = palette.coral,
            bg = palette.olive_charcoal
        }
    }
end

return M
