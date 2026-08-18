local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        NonText = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        PreProc = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        String = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Type = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Statement = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Identifier = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Function = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Constant = {
            fg = palette.,
            bg = palette.cosmic_latte
        },
        Special = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Operator = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        Delimiter = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        },
        ['@variable'] = {
            fg = palette.brown,
            bg = palette.cosmic_latte
        }
    }
end

return M
