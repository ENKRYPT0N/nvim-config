if vim.fn.exists("syntax_on") then
  vim.cmd("syntax reset")
end
vim.o.background = "dark"

vim.g.colors_name = "kryton"


-- ████████████████████████████████████████████ --
--              Base Nvim Colors                --
-- ████████████████████████████████████████████ --

vim.api.nvim_set_hl(0, "Normal", { fg = "#ffffff", bg = "#000000" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "Visual", { bg = "#3e4451" })
vim.api.nvim_set_hl(0, "Comment", { fg = "#5c6370" })
vim.api.nvim_set_hl(0, "Constant", { fg = "#d19a66" })
vim.api.nvim_set_hl(0, "Identifier", { fg = "#ffd042" })
vim.api.nvim_set_hl(0, "Statement", { fg = "#c678dd" })
vim.api.nvim_set_hl(0, "PreProc", { fg = "#56b6c2" })
vim.api.nvim_set_hl(0, "Type", { fg = "#56b6c2" })
vim.api.nvim_set_hl(0, "Special", { fg = "#e06c75" })
vim.api.nvim_set_hl(0, "Error", { fg = "#ffffff", bg = "#ff0000" })


-- ████████████████████████████████████████████ --
--              Dashboard Colors                --
-- ████████████████████████████████████████████ --

vim.api.nvim_set_hl(0, "DashboardHeader", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "DashboardCenter", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "DashboardFooter", { fg = "#ffffff" })

vim.api.nvim_set_hl(0, "DashboardIcon", { fg = "#ab0000" })
vim.api.nvim_set_hl(0, "DashboardDesc", { fg = "#ffffff" })
vim.api.nvim_set_hl(0, "DashboardKey", { fg = "#ab0000" })
vim.api.nvim_set_hl(0, "DashboardShortcut", { fg = "#d19a66" })
vim.api.nvim_set_hl(0, "DashboardNormal", { fg = "#ffffff", bg = "#1e1e1e" })


-- ████████████████████████████████████████████ --
--                NeoTree Colors               --
-- ████████████████████████████████████████████ --

-- Core UI Elements
vim.api.nvim_set_hl(0, "NeoTreeNormal", { fg = "#cdd6f4", bg = "#000000" })       -- main bg/fg
vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { fg = "#6c7086", bg = "#000000" })     -- non-focused
vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#c0c0c0", bg = "#1a1a1a" }) -- window split
vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { fg = "#1e1e2e", bg = "#000000" })  -- hide ~ lines
vim.api.nvim_set_hl(0, "NeoTreeTitleBar", { fg = "#fab387", bg = "#181825", bold = true })

-- Cursor, Selection, Indent Guides
vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = "#170000" })   -- selected line
vim.api.nvim_set_hl(0, "NeoTreeIndentMarker", { fg = "#ffffff" }) -- │ indent lines
vim.api.nvim_set_hl(0, "NeoTreeExpander", { fg = "#cba6f7" })     -- expand arrow

-- File & Directory Names
vim.api.nvim_set_hl(0, "NeoTreeFileName", { fg = "#ffffff" })
--vim.api.nvim_set_hl(0, "NeoTreeFileNameOpened", { fg = "#ab0000" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryName", { fg = "#f2e6d9" })
vim.api.nvim_set_hl(0, "NeoTreeRootName", { fg = "#ab0000", bold = true })
vim.api.nvim_set_hl(0, "NeoTreeSymbolicLinkTarget", { fg = "#f5c2e7", italic = true })

-- Icons
vim.api.nvim_set_hl(0, "NeoTreeFileIcon", { fg = "#f9e2af" })
vim.api.nvim_set_hl(0, "NeoTreeDirectoryIcon", { fg = "#ffffff" })

-- Git Status Indicators
vim.api.nvim_set_hl(0, "NeoTreeGitAdded", { fg = "#a6e3a1" })
vim.api.nvim_set_hl(0, "NeoTreeGitDeleted", { fg = "#f38ba8" })
vim.api.nvim_set_hl(0, "NeoTreeGitModified", { fg = "#f9e2af" })
vim.api.nvim_set_hl(0, "NeoTreeGitConflict", { fg = "#eba0ac" })
vim.api.nvim_set_hl(0, "NeoTreeGitUntracked", { fg = "#94e2d5" })
vim.api.nvim_set_hl(0, "NeoTreeGitIgnored", { fg = "#6c7086", italic = true })
vim.api.nvim_set_hl(0, "NeoTreeGitStaged", { fg = "#a6e3a1", bold = true })

-- Diagnostics [LSP]
vim.api.nvim_set_hl(0, "NeoTreeDiagnosticError", { fg = "#f38ba8" })
vim.api.nvim_set_hl(0, "NeoTreeDiagnosticWarn", { fg = "#f9e2af" })
vim.api.nvim_set_hl(0, "NeoTreeDiagnosticInfo", { fg = "#89b4fa" })
vim.api.nvim_set_hl(0, "NeoTreeDiagnosticHint", { fg = "#94e2d5" })

-- ████████████████████████████████████████████ --
--             Telescope Colors            --
-- ████████████████████████████████████████████ --

-- Telescope base
vim.api.nvim_set_hl(0, "TelescopeNormal",         { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopeBorder",         { bg = "#ffffff", fg = "#1a1a1a" })
vim.api.nvim_set_hl(0, "TelescopePromptNormal",   { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopePromptBorder",   { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopePromptPrefix",   { fg = "#ab0000" })
vim.api.nvim_set_hl(0, "TelescopePromptTitle",    { fg = "#ffffff", bg = "#000000", bold = true })

-- Results window
vim.api.nvim_set_hl(0, "TelescopeResultsNormal",  { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopeResultsBorder",  { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopeResultsTitle",   { fg = "#ffffff", bg = "#000000", bold = true })

-- Preview window
vim.api.nvim_set_hl(0, "TelescopePreviewNormal",  { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopePreviewBorder",  { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "TelescopePreviewTitle",   { fg = "#ffffff", bg = "#000000", bold = true })

-- Highlights & selection
vim.api.nvim_set_hl(0, "TelescopeSelection",      { bg = "#170000", fg = "#ffffff", bold = true })
vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#ffffff", bg = "#170000", bold = true })
vim.api.nvim_set_hl(0, "TelescopeMatching",       { fg = "#ffcc00", bold = true }) -- gold highlight


-- ████████████████████████████████████████████ --
--             Noice & Notify Colors            --
-- ████████████████████████████████████████████ --


vim.api.nvim_set_hl(0, "NoiceCmdlinePopup", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePopupBorder", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon", { bg = "#000000", fg = "#ab0000" })
vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NoiceCmdline", { bg = "#1e1e2e", fg = "#cdd6f4" })

vim.api.nvim_set_hl(0, "NoicePopup", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "NoicePopupBorder", { bg = "#1e1e2e", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NoiceConfirm", { bg = "#1e1e2e", fg = "#cdd6f4" })
vim.api.nvim_set_hl(0, "NoiceConfirmBorder", { bg = "#1e1e2e", fg = "#ffffff" })

-- Notify base
--vim.api.nvim_set_hl(0, "NotifyBackground", { bg = "#000000", fg = "#cdd6f4" })
--
---- Notify INFO
vim.api.nvim_set_hl(0, "NotifyINFOBorder", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NotifyINFOTitle", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NotifyINFOIcon", { bg = "#000000", fg = "#ffffff" })
vim.api.nvim_set_hl(0, "NotifyINFOBody", { bg = "#000000", fg = "#cdd6f4" })

---- Notify WARN
--vim.api.nvim_set_hl(0, "NotifyWARNBorder", { bg = "#1e1e2e", fg = "#f9e2af" })
--vim.api.nvim_set_hl(0, "NotifyWARNTitle", { bg = "#1e1e2e", fg = "#f9e2af" })
--vim.api.nvim_set_hl(0, "NotifyWARNIcon", { bg = "#1e1e2e", fg = "#f9e2af" })
--vim.api.nvim_set_hl(0, "NotifyWARNBody", { bg = "#1e1e2e", fg = "#cdd6f4" })
--
---- Notify ERROR
--vim.api.nvim_set_hl(0, "NotifyERRORBorder", { bg = "#1e1e2e", fg = "#f38ba8" })
--vim.api.nvim_set_hl(0, "NotifyERRORTitle", { bg = "#1e1e2e", fg = "#f38ba8" })
--vim.api.nvim_set_hl(0, "NotifyERRORIcon", { bg = "#1e1e2e", fg = "#f38ba8" })
--vim.api.nvim_set_hl(0, "NotifyERRORBody", { bg = "#1e1e2e", fg = "#cdd6f4" })
--
---- Notify DEBUG
--vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { bg = "#1e1e2e", fg = "#94e2d5" })
--vim.api.nvim_set_hl(0, "NotifyDEBUGTitle", { bg = "#1e1e2e", fg = "#94e2d5" })
--vim.api.nvim_set_hl(0, "NotifyDEBUGIcon", { bg = "#1e1e2e", fg = "#94e2d5" })
--vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { bg = "#1e1e2e", fg = "#cdd6f4" })
--
---- Notify TRACE
--vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { bg = "#1e1e2e", fg = "#cba6f7" })
--vim.api.nvim_set_hl(0, "NotifyTRACETitle", { bg = "#1e1e2e", fg = "#cba6f7" })
--vim.api.nvim_set_hl(0, "NotifyTRACEIcon", { bg = "#1e1e2e", fg = "#cba6f7" })
--vim.api.nvim_set_hl(0, "NotifyTRACEBody", { bg = "#1e1e2e", fg = "#cdd6f4" })
