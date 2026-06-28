local M = {}

function M.setup()
    vim.o.background = "dark"
    vim.g.colors_name = "cocoa-dark"

    local palette = require("cocoa.palettes.cocoa-dark");

    local highlight = vim.api.nvim_set_hl
    local highlightSettings = vim.tbl_extend("force", getUIHighlightSettings(palette),
        getTreeSitterHighlightSettings(palette), getBaseHighlightSettings(palette))

    for group, colorSettings in pairs(highlightSettings) do
        highlight(0, group, colorSettings)
    end
end

function getUIHighlightSettings(p)
    return {
        CursorLine = {
            bg = p["Stone-600"]
        },
        LineNr = {
            fg = p["Stone-700"]
        },
        CursorLineNr = {
            fg = p["Apricot-900"]
        },
        Visual = {
            bg = p["Apricot-600"]
        },
        Search = {
            fg = p["bg"],
            bg = p["Apricot-900"]
        },
        Pmenu = {
            fg = p["Stone-900"],
            bg = p["Stone-600"]
        },
        PmenuSel = {
            fg = p["bg"],
            bg = p["Apricot-900"]
        }
    }
end

function getTreeSitterHighlightSettings(p)
    return {
        ["@field"] = {
            fg = p["Apricot-900"]
        },
        ["@variable"] = {
            fg = p["Stone-900"]
        },
        ["@variable.member"] = {
            fg = p["Apricot-800"]
        },
        ["@parameter"] = {
            fg = p["Stone-900"]
        },
        ["@property"] = {
            fg = p["Apricot-900"]
        },
        ["@function.call"] = {
            fg = p["Apricot-1000"]
        },
        ["@method.call"] = {
            fg = p["Apricot-1000"]
        },
        ["@constructor"] = {
            fg = p["Apricot-900"]
        },
        ["@keyword.return"] = {
            fg = p["Red-900"]
        },
        ["@tag"] = {
            fg = p["Apricot-1000"]
        }
    }
end

function getBaseHighlightSettings(p)
    return {
        Normal = {
            fg = p["Stone-1000"],
            bg = p["bg"]
        },
        EndOfBuffer = {
            fg = p["bg"]
        },
        Comment = {
            fg = p["Stone-700"]
        },
        Constant = {
            fg = p["Amber-900"]
        },
        String = {
            fg = p["Turmeric-1000"]
        },
        SpecialChar = {
            fg = p["Turmeric-900"]
        },
        Function = {
            fg = p["Apricot-1000"]
        },
        PreProc = {
            fg = p["Amber-1000"]
        },
        Special = {
            fg = p["Apricot-900"]
        },
        Type = {
            fg = p["Amber-900"]
        },
        Identifier = {
            fg = p["Stone-1000"]
        },
        Directory = {
            fg = p["Apricot-900"]
        },
        Keyword = {
            fg = p["Apricot-1000"]
        },
        Exception = {
            fg = p["Red-1000"]
        },
        Label = {
            fg = p["Apricot-900"]
        },
        Repeat = {
            fg = p["Apricot-1000"]
        },
        Conditional = {
            fg = p["Apricot-1000"]
        },
        Statement = {
            fg = p["Apricot-1000"]
        },
        Structure = {
            fg = p["Amber-1000"]
        },
        Delimiter = {
            fg = p["Stone-800"]
        },
        Operator = {
            fg = p["Stone-900"]
        }
    }
end

return M
