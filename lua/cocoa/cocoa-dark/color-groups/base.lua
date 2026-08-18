local M = {}

function M.setup(palette)
    return {
        Normal = {
            fg = palette.beige,
            bg = palette.brown
        },
        CursorLineNr = {
            fg = palette.beige,
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
