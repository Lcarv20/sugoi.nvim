local cb = require("colorbuddy")
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

-- Notifier
Group.link("SnacksNotifierDebug", groups.Normal)
Group.new("SnacksNotifierBorderDebug", colors.accent, colors.background)
Group.link("SnacksNotifierIconDebug", groups.Comment)
Group.link("SnacksNotifierTitleDebug", groups.Comment)

Group.link("SnacksNotifierError", groups.Normal)
Group.new("SnacksNotifierBorderError", colors.accent, colors.background)
Group.link("SnacksNotifierIconError", groups.DiagnosticSignError)
Group.link("SnacksNotifierTitleError", groups.DiagnosticError)

Group.link("SnacksNotifierInfo", groups.Normal)
Group.new("SnacksNotifierBorderInfo", colors.accent, colors.background)
Group.link("SnacksNotifierIconInfo", groups.DiagnosticSignInfo)
Group.link("SnacksNotifierTitleInfo", groups.DiagnosticInfo)

Group.link("SnacksNotifierTrace", groups.Normal)
Group.new("SnacksNotifierBorderTrace", colors.accent, colors.background)
Group.link("SnacksNotifierIconTrace", groups.Identifier)
Group.link("SnacksNotifierTitleTrace", groups.Identifier)

Group.link("SnacksNotifierWarn", groups.Normal)
Group.new("SnacksNotifierBorderWarn", colors.accent, colors.background)
Group.link("SnacksNotifierIconWarn", groups.DiagnosticSignWarn)
Group.link("SnacksNotifierTitleWarn", groups.DiagnosticWarn)

-- Dashboard
Group.link("SnacksDashboardDesc", groups.Comment)
Group.new("SnacksDashboardHeader", colors.primary)
Group.new("SnacksDashboardIcon", colors.secondary)
Group.link("SnacksDashboardFooter", groups.Special)
Group.link("SnacksDashboardSpecial", groups.Special)
Group.link("SnacksDashboardDir", groups.Directory)

-- Profiler & Scratch
Group.link("SnacksProfilerIconInfo", groups.DiagnosticSignInfo)
Group.link("SnacksProfilerBadgeInfo", groups.DiagnosticInfo)
Group.link("SnacksScratchKey", groups.SnacksProfilerIconInfo)
Group.link("SnacksScratchDesc", groups.SnacksProfilerBadgeInfo)
Group.link("SnacksProfilerIconTrace", groups.Identifier)
Group.link("SnacksProfilerBadgeTrace", groups.NonText)

-- Indent Guides
Group.new("SnacksIndent", colors.sugoi_8, nil)
Group.new("SnacksIndentScope", colors.accent, nil)

-- Misc
Group.link("SnacksZenIcon", groups.Special)
Group.link("SnacksInputIcon", groups.Special)
Group.new("SnacksInputBorder", colors.accent, colors.background)
Group.link("SnacksInputTitle", groups.FloatTitle)

-- Picker
Group.new("SnacksPickerInputBorder", colors.accent, colors.background)
Group.link("SnacksPickerInputTitle", groups.FloatTitle)
Group.link("SnacksPickerBoxTitle", groups.FloatTitle)
Group.link("SnacksPickerSelected", groups.PmenuSel)
Group.link("SnacksPickerToggle", groups.SnacksProfilerBadgeInfo)
Group.link("SnacksPickerPickWinCurrent", groups.Search)
Group.link("SnacksPickerPickWin", groups.CurSearch)
