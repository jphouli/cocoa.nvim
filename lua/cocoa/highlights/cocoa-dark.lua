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
            bg = palette.silver
        },
        LineNr = {
            fg = palette.silver,
            bg = palette.black
        },
        CursorLineNr = {
            fg = palette.silver,
            bg = palette.black
        },
        Visual = {
            fg = palette.black,
            bg = palette.silver
        },
        Search = {
            fg = palette.black,
            bg = palette.silver
        },
        Pmenu = {
            fg = palette.silver,
            bg = palette.black
        },
        PmenuSel = {
            fg = palette.black,
            bg = palette.silver
        }
    }
end

function getTreeSitterHighlightSettings(palette)
    return {
        ["@field"] = {
            fg = palette.cream,
            bg = palette.black
        },
        ["@variable"] = {
            fg = palette.cream,
            bg = palette.black
        },
        ["@variable.member"] = {
            fg = palette.cream,
            bg = palette.black
        },
        ["@function.call"] = {
            fg = palette.warm_beige,
            bg = palette.black
        },
        ["@method.call"] = {
            fg = palette.warm_beige,
            bg = palette.black
        },
        ["@parameter"] = {
            fg = palette.cream,
            bg = palette.black
        },
        ["@property"] = {
            fg = palette.cream,
            bg = palette.black
        },
        ["@constructor"] = {
            fg = palette.warm_beige,
            bg = palette.black
        },
        ["@keyword.return"] = {
            fg = palette.sand,
            bg = palette.black
        },
        ["@tag"] = {
            fg = palette.sand,
            bg = palette.black
        }
    }
end

function getBaseHighlightSettings(palette)
    return {
        Normal = {
            fg = palette.silver,
            bg = palette.black
        },
        EndOfBuffer = {
            fg = palette.silver,
            bg = palette.black
        },
        Comment = {
            fg = palette.silver,
            bg = palette.black
        },
        Constant = {
            fg = palette.apricot,
            bg = palette.black
        },
        String = {
            fg = palette.tan,
            bg = palette.black
        },
        SpecialChar = {
            fg = palette.tan,
            bg = palette.black
        },
        Function = {
            fg = palette.warm_beige,
            bg = palette.black
        },
        PreProc = {
            fg = palette.apricot,
            bg = palette.black
        },
        Special = {
            fg = palette.apricot,
            bg = palette.black
        },
        Type = {
            fg = palette.apricot,
            bg = palette.black
        },
        Identifier = {
            fg = palette.cream,
            bg = palette.black
        },
        Keyword = {
            fg = palette.sand,
            bg = palette.black
        },
        Exception = {
            fg = palette.sand,
            bg = palette.black
        },
        Label = {
            fg = palette.sand,
            bg = palette.black
        },
        Repeat = {
            fg = palette.sand,
            bg = palette.black
        },
        Conditional = {
            fg = palette.sand,
            bg = palette.black
        },
        Statement = {
            fg = palette.sand,
            bg = palette.black
        },
        Structure = {
            fg = palette.sandy_beige,
            bg = palette.black
        },
        Delimiter = {
            fg = palette.sandy_beige,
            bg = palette.black
        },
        Operator = {
            fg = palette.sandy_beige,
            bg = palette.black
        },
        Directory = {
            fg = palette.apricot,
            bg = palette.black
        }
    }
end

return M
