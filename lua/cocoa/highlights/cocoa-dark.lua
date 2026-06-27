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

function getUIHighlightSettings(palette)
    return {
        CursorLine = {
            bg = palette["slate-700"]
        },
        LineNr = {
            fg = palette["slate-500"]
        },
        CursorLineNr = {
            fg = palette["mango-500"]
        },
        Visual = {
            bg = palette["mango-900"]
        },
        Search = {
            fg = palette["slate-900"],
            bg = palette["mango-300"]
        },
        Pmenu = {
            fg = palette["slate-100"],
            bg = palette["slate-700"]
        },
        PmenuSel = {
            fg = palette["slate-900"],
            bg = palette["mango-500"]
        }
    }
end

function getTreeSitterHighlightSettings(palette)
    return {
        ["@field"] = {
            fg = palette["mango-300"]
        },
        ["@variable"] = {
            fg = palette["mango-100"]
        },
        ["@variable.member"] = {
            fg = palette["mango-300"]
        },
        ["@parameter"] = {
            fg = palette["slate-300"]
        },
        ["@property"] = {
            fg = palette["mango-300"]
        },
        ["@function.call"] = {
            fg = palette["mango-500"]
        },
        ["@method.call"] = {
            fg = palette["mango-500"]
        },
        ["@constructor"] = {
            fg = palette["deep_gold-500"]
        },
        ["@keyword.return"] = {
            fg = palette["mango-500"]
        },
        ["@tag"] = {
            fg = palette["mango-500"]
        }
    }
end

function getBaseHighlightSettings(palette)
    return {
        Normal = {
            fg = palette["mango-100"],
            bg = palette["slate-900"]
        },
        EndOfBuffer = {
            fg = palette["slate-700"]
        },
        Comment = {
            fg = palette["slate-500"]
        },
        Constant = {
            fg = palette["deep_gold-300"]
        },
        String = {
            fg = palette["matcha-500"]
        },
        SpecialChar = {
            fg = palette["matcha-300"]
        },
        Function = {
            fg = palette["mango-500"]
        },
        PreProc = {
            fg = palette["deep_gold-500"]
        },
        Special = {
            fg = palette["deep_gold-300"]
        },
        Type = {
            fg = palette["deep_gold-500"]
        },
        Identifier = {
            fg = palette["mango-100"]
        },
        Directory = {
            fg = palette["mango-500"]
        },
        Keyword = {
            fg = palette["mango-500"]
        },
        Exception = {
            fg = palette["mango-500"]
        },
        Label = {
            fg = palette["mango-300"]
        },
        Repeat = {
            fg = palette["mango-500"]
        },
        Conditional = {
            fg = palette["mango-500"]
        },
        Statement = {
            fg = palette["mango-500"]
        },
        Structure = {
            fg = palette["deep_gold-500"]
        },
        Delimiter = {
            fg = palette["slate-300"]
        },
        Operator = {
            fg = palette["slate-100"]
        }
    }
end

return M
