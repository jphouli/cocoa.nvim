local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.dusty_brown,
            bg = palette.charcoal
        },
        NonText = {
            fg = palette.dusty_brown,
            bg = palette.charcoal
        },
        PreProc = {
            fg = palette.olive_green,
            bg = palette.charcoal
        },
        String = {
            fg = palette.spring_green,
            bg = palette.charcoal
        }
    }
end

return M
