local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

-- Notifier
Group.link('SnacksNotifierDebug', groups.Normal)
Group.link('SnacksNotifierBorderDebug', groups.FloatBorder)
Group.link('SnacksNotifierIconDebug', groups.Comment)
Group.link('SnacksNotifierTitleDebug', groups.Comment)

Group.link('SnacksNotifierError', groups.Normal)
Group.link('SnacksNotifierBorderError', groups.FloatBorder)
Group.link('SnacksNotifierIconError', groups.DiagnosticSignError)
Group.link('SnacksNotifierTitleError', groups.DiagnosticError)

Group.link('SnacksNotifierInfo', groups.Normal)
Group.link('SnacksNotifierBorderInfo', groups.FloatBorder)
Group.link('SnacksNotifierIconInfo', groups.DiagnosticSignInfo)
Group.link('SnacksNotifierTitleInfo', groups.DiagnosticInfo)

Group.link('SnacksNotifierTrace', groups.Normal)
Group.link('SnacksNotifierBorderTrace', groups.FloatBorder)
Group.link('SnacksNotifierIconTrace', groups.Identifier)
Group.link('SnacksNotifierTitleTrace', groups.Identifier)

Group.link('SnacksNotifierWarn', groups.Normal)
Group.link('SnacksNotifierBorderWarn', groups.FloatBorder)
Group.link('SnacksNotifierIconWarn', groups.DiagnosticSignWarn)
Group.link('SnacksNotifierTitleWarn', groups.DiagnosticWarn)

-- Dashboard
Group.link('SnacksDashboardDesc', groups.Comment)
Group.link('SnacksDashboardFooter', groups.Special)
Group.link('SnacksDashboardHeader', groups.Title)
Group.link('SnacksDashboardIcon', groups.Special)
Group.link('SnacksDashboardKey', groups.Statement)
Group.link('SnacksDashboardSpecial', groups.Special)
Group.link('SnacksDashboardDir', groups.Directory)

-- Profiler & Scratch
Group.link('SnacksProfilerIconInfo', groups.DiagnosticSignInfo)
Group.link('SnacksProfilerBadgeInfo', groups.DiagnosticInfo)
Group.link('SnacksScratchKey', groups.SnacksProfilerIconInfo)
Group.link('SnacksScratchDesc', groups.SnacksProfilerBadgeInfo)
Group.link('SnacksProfilerIconTrace', groups.Identifier)
Group.link('SnacksProfilerBadgeTrace', groups.NonText)

-- Indent Guides
Group.new('SnacksIndent', colors.sugoi_8, nil)
Group.new('SnacksIndentScope', colors.primary, nil)

-- Misc
Group.link('SnacksZenIcon', groups.Special)
Group.link('SnacksInputIcon', groups.Special)
Group.link('SnacksInputBorder', groups.FloatBorder)
Group.link('SnacksInputTitle', groups.FloatTitle)

-- Picker
Group.link('SnacksPickerInputBorder', groups.FloatBorder)
Group.link('SnacksPickerInputTitle', groups.FloatTitle)
Group.link('SnacksPickerBoxTitle', groups.FloatTitle)
Group.link('SnacksPickerSelected', groups.PmenuSel)
Group.link('SnacksPickerToggle', groups.SnacksProfilerBadgeInfo)
Group.link('SnacksPickerPickWinCurrent', groups.Search)
Group.link('SnacksPickerPickWin', groups.CurSearch)


