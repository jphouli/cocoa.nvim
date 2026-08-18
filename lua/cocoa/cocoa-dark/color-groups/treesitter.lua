local M = {}

function M.setup(palette)
    return {
        ['@variable'] = {
            fg = palette.beige,
            bg = palette.brown
        }
    }
end

return M
