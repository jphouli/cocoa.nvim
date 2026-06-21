local M = {}

function M.setup()
    vim.o.background = "dark"
    vim.g.colors_name = "cocoa-dark"

    local palette = require("cocoa.palettes.cocoa-dark")
    local highlight = vim.api.nvim_set_hl

    local highlightSettings = vim.tbl_extend("force", getUIHighlightSettings(palette),
        getTreeSitterHighlightSettings(palette), getBaseHighlightSettings(palette))

    for group, colorSettings in pairs(highlightSettings) do
        highlight(0, group, colorSettings)
    end
end

function getUIHighlightSettings(palette)
    return {
        CursorLine = {
            fg = palette.bg,
            bg = palette.light_red
        },
        LineNr = {
            fg = palette.light_red,
            bg = palette.bg
        },
        CursorLineNr = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Visual = {
            fg = palette.bg,
            bg = palette.light_red
        },
        Search = {
            fg = palette.bg,
            bg = palette.light_red
        },
        Pmenu = {
            fg = palette.light_red,
            bg = palette.bg
        },
        PmenuSel = {
            fg = palette.bg,
            bg = palette.light_red
        }
    }
end

function getTreeSitterHighlightSettings(palette)
    return {
        ["@field"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@variable"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@function.call"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@method.call"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@parameter"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@property"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@constructor"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@keyword.return"] = {
            fg = palette.light_red,
            bg = palette.bg
        },
        ["@tag"] = {
            fg = palette.light_red,
            bg = palette.bg
        }
    }
end

function getBaseHighlightSettings(palette)
    return {
        Normal = {
            fg = palette.light_red,
            bg = palette.bg
        },
        EndOfBuffer = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Statement = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Delimiter = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Operator = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Constant = {
            fg = palette.light_red,
            bg = palette.bg
        },
        String = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Function = {
            fg = palette.light_red,
            bg = palette.bg
        },
        PreProc = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Special = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Comment = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Identifier = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Type = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Keyword = {
            fg = palette.light_red,
            bg = palette.bg
        },
        Structure = {
            fg = palette.light_red,
            bg = palette.bg
        }
    }
end

return M
