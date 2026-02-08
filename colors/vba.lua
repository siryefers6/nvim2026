-- ============================================
-- VBA-like colorscheme (Excel VBA editor)
-- ============================================

local palette = {
  bg = "#FFFFFF",
  fg = "#000000",
  keyword = "#0000FF",
  comment = "#008000",
  string = "#800000",
  accent = "#0000FF",
  muted = "#8A8A8A",
  ui = "#E6E6E6",
  ui_alt = "#F7F7F7",
  warn = "#B36B00",
  err = "#C00000",
  info = "#0000FF",
  hint = "#666666",
}

local function hi(group, opts)
  vim.api.nvim_set_hl(0, group, opts)
end

vim.o.termguicolors = true
vim.o.background = "light"
vim.cmd("highlight clear")
if vim.fn.exists("syntax_on") == 1 then
  vim.cmd("syntax reset")
end
vim.g.colors_name = "vba"

-- Core
hi("Normal", { fg = palette.fg, bg = palette.bg })
hi("NormalNC", { fg = palette.fg, bg = palette.bg })
hi("NormalFloat", { fg = palette.fg, bg = palette.bg })
hi("CursorLine", { bg = palette.ui_alt })
hi("CursorLineNr", { fg = palette.fg, bg = palette.ui_alt, bold = true })
hi("LineNr", { fg = palette.muted, bg = palette.bg })
hi("Cursor", { fg = palette.bg, bg = palette.fg })
hi("Visual", { bg = "#CDE8FF" })
hi("Search", { fg = palette.fg, bg = "#FFF2CC" })
hi("IncSearch", { fg = palette.fg, bg = "#FFD966" })
hi("MatchParen", { bg = "#FFE599", bold = true })

-- UI
hi("StatusLine", { fg = palette.fg, bg = palette.ui })
hi("StatusLineNC", { fg = palette.hint, bg = palette.ui })
hi("VertSplit", { fg = "#C0C0C0", bg = palette.ui })
hi("Pmenu", { fg = palette.fg, bg = "#F3F3F3" })
hi("PmenuSel", { fg = palette.bg, bg = palette.accent })
hi("PmenuSbar", { bg = "#DDDDDD" })
hi("PmenuThumb", { bg = "#BBBBBB" })
hi("WinSeparator", { fg = "#C0C0C0", bg = palette.bg })

-- Syntax
hi("Comment", { fg = palette.comment, italic = false })
hi("Constant", { fg = palette.fg })
hi("String", { fg = palette.string })
hi("Character", { fg = palette.string })
hi("Number", { fg = palette.fg })
hi("Boolean", { fg = palette.keyword })
hi("Float", { fg = palette.fg })
hi("Identifier", { fg = palette.fg })
hi("Function", { fg = palette.fg })
hi("Statement", { fg = palette.keyword })
hi("Conditional", { fg = palette.keyword })
hi("Repeat", { fg = palette.keyword })
hi("Label", { fg = palette.keyword })
hi("Operator", { fg = palette.fg })
hi("Keyword", { fg = palette.keyword })
hi("Exception", { fg = palette.keyword })
hi("PreProc", { fg = palette.keyword })
hi("Include", { fg = palette.keyword })
hi("Define", { fg = palette.keyword })
hi("Macro", { fg = palette.keyword })
hi("Type", { fg = palette.keyword })
hi("Special", { fg = palette.fg })
hi("SpecialChar", { fg = palette.fg })
hi("Tag", { fg = palette.keyword })
hi("Delimiter", { fg = palette.fg })
hi("SpecialComment", { fg = palette.comment })
hi("Debug", { fg = palette.err })
hi("Underlined", { fg = palette.info, underline = true })
hi("Error", { fg = palette.bg, bg = palette.err })
hi("Todo", { fg = palette.fg, bg = "#FFF2CC", bold = true })

-- Diagnostics
hi("DiagnosticError", { fg = palette.err })
hi("DiagnosticWarn", { fg = palette.warn })
hi("DiagnosticInfo", { fg = palette.info })
hi("DiagnosticHint", { fg = palette.hint })
hi("DiagnosticUnderlineError", { underline = true, sp = palette.err })
hi("DiagnosticUnderlineWarn", { underline = true, sp = palette.warn })
hi("DiagnosticUnderlineInfo", { underline = true, sp = palette.info })
hi("DiagnosticUnderlineHint", { underline = true, sp = palette.hint })
