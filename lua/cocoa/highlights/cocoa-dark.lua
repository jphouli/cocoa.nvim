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
            fg = p["Apricot-500"]
        },
        Visual = {
            bg = p["Apricot-300"]
        },
        Search = {
            fg = p["bg"],
            bg = p["Apricot-500"]
        },
        Pmenu = {
            fg = p["Stone-900"],
            bg = p["Stone-600"]
        },
        PmenuSel = {
            fg = p["bg"],
            bg = p["Apricot-500"]
        }
    }
end

function getTreeSitterHighlightSettings(p)
    return {
        ["@field"] = {
            fg = p["Apricot-500"]
        },
        ["@variable"] = {
            fg = p["Stone-900"]
        },
        ["@variable.member"] = {
            fg = p["Apricot-300"]
        },
        ["@parameter"] = {
            fg = p["Stone-900"]
        },
        ["@property"] = {
            fg = p["Apricot-500"]
        },
        ["@function.call"] = {
            fg = p["Apricot-700"]
        },
        ["@method.call"] = {
            fg = p["Apricot-700"]
        },
        ["@constructor"] = {
            fg = p["Apricot-500"]
        },
        ["@keyword.return"] = {
            fg = p["Coral-300"]
        },
        ["@tag"] = {
            fg = p["Apricot-700"]
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
            fg = p["Orange-500"]
        },
        String = {
            fg = p["Orange-700"]
        },
        SpecialChar = {
            fg = p["Orange-300"]
        },
        Function = {
            fg = p["Apricot-700"]
        },
        PreProc = {
            fg = p["Orange-700"]
        },
        Special = {
            fg = p["Apricot-500"]
        },
        Type = {
            fg = p["Orange-500"]
        },
        Identifier = {
            fg = p["Stone-1000"]
        },
        Directory = {
            fg = p["Apricot-500"]
        },
        Keyword = {
            fg = p["Apricot-700"]
        },
        Exception = {
            fg = p["Coral-500"]
        },
        Label = {
            fg = p["Apricot-500"]
        },
        Repeat = {
            fg = p["Apricot-700"]
        },
        Conditional = {
            fg = p["Apricot-700"]
        },
        Statement = {
            fg = p["Apricot-700"]
        },
        Structure = {
            fg = p["Orange-700"]
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
