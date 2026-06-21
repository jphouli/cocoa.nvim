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
            fg = palette.black,
            bg = palette.light_orange
        },
        LineNr = {
            fg = palette.light_orange,
            bg = palette.black
        },
        CursorLineNr = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Visual = {
            fg = palette.black,
            bg = palette.light_orange
        },
        Search = {
            fg = palette.black,
            bg = palette.light_orange
        },
        Pmenu = {
            fg = palette.light_orange,
            bg = palette.black
        },
        PmenuSel = {
            fg = palette.black,
            bg = palette.light_orange
        }
    }
end

function getTreeSitterHighlightSettings(palette)
    return {
        ["@field"] = {
            fg = palette.light_orange,
            bg = palette.black
        },
        ["@variable"] = {
            fg = palette.light_orange,
            bg = palette.black
        },
        ["@function.call"] = {
            fg = palette.orange,
            bg = palette.black
        },
        ["@method.call"] = {
            fg = palette.orange,
            bg = palette.black
        },
        ["@parameter"] = {
            fg = palette.light_orange,
            bg = palette.black
        },
        ["@property"] = {
            fg = palette.light_orange,
            bg = palette.black
        },
        ["@constructor"] = {
            fg = palette.light_orange,
            bg = palette.black
        },
        ["@keyword.return"] = {
            fg = palette.light_orange,
            bg = palette.black
        },
        ["@tag"] = {
            fg = palette.light_orange,
            bg = palette.black
        }
    }
end

function getBaseHighlightSettings(palette)
    return {
        Normal = {
            fg = palette.light_orange,
            bg = palette.black
        },
        EndOfBuffer = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Statement = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Delimiter = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Operator = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Constant = {
            fg = palette.light_orange,
            bg = palette.black
        },
        String = {
            fg = palette.terracotta,
            bg = palette.black
        },
        SpecialChar = {
            fg = palette.terracotta,
            bg = palette.black
        },
        Function = {
            fg = palette.orange,
            bg = palette.black
        },
        PreProc = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Special = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Comment = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Identifier = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Type = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Keyword = {
            fg = palette.light_orange,
            bg = palette.black
        },
        Structure = {
            fg = palette.light_orange,
            bg = palette.black
        }
    }
end

return M
