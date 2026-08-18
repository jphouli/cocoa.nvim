local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.beige,
            bg = palette.brown
        },
        Identifier = {
            fg = palette.beige,
            bg = palette.brown
        },
        PreProc = {
            fg = palette.beige,
            bg = palette.brown
        },
        Directory = {
            fg = palette.peach,
            bg = palette.brown
        },
        Constant = {
            fg = palette.peach,
            bg = palette.brown
        },
        Function = {
            fg = palette.peach,
            bg = palette.brown
        },
        Type = {
            fg = palette.peach,
            bg = palette.brown
        },
        Special = {
            fg = palette.peach,
            bg = palette.brown
        },
        Statement = {
            fg = palette.muted_taupe,
            bg = palette.brown
        },
        OilFile = {
            fg = palette.muted_taupe,
            bg = palette.brown
        },
        EndOfBuffer = {
            fg = palette.muted_taupe,
            bg = palette.brown
        },
        LineNr = {
            fg = palette.muted_taupe,
            bg = palette.brown
        },
        Comment = {
            fg = palette.muted_taupe,
            bg = palette.brown
        }
    }
end

return M
