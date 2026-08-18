local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        NonText = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        PreProc = {
            fg = palette.pastel_orange,
            bg = palette.brown
        },
        String = {
            fg = palette.dark_orange,
            bg = palette.brown
        },
        Type = {
            fg = palette.pastel_orange,
            bg = palette.brown
        },
        Statement = {
            fg = palette.deep_coral,
            bg = palette.brown
        },
        Identifier = {
            fg = palette.dark_orange,
            bg = palette.brown
        },
        Function = {
            fg = palette.dark_orange,
            bg = palette.brown
        },
        Constant = {
            fg = palette.pastel_orange,
            bg = palette.brown
        },
        Special = {
            fg = palette.pastel_orange,
            bg = palette.brown
        },
        Operator = {
            fg = palette.dusty_orange,
            bg = palette.brown
        },
        Delimiter = {
            fg = palette.dusty_tan,
            bg = palette.brown
        },
        ['@variable'] = {
            fg = palette.dark_orange,
            bg = palette.brown
        }
    }
end

return M
