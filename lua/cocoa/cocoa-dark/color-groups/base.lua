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
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        String = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        Type = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        Statement = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        Identifier = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        Function = {
            fg = palette.dark_orange,
            bg = palette.brown
        },
        Constant = {
            fg = palette.cosmic_latte,
            bg = palette.brown
        },
        Special = {
            fg = palette.cosmic_latte,
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
            fg = palette.cosmic_latte,
            bg = palette.brown
        }
    }
end

return M
