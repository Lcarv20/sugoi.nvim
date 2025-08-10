local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

Group.new('MiniClueNextKey', colors.primary)
Group.new('MiniClueSeparator', colors.neutral_8)
Group.new('MiniClueDescGroup', colors.secondary)
Group.new('MiniClueDescSingle', colors.neutral_3)
Group.link('MiniClueTitle', groups.FloatTitle)
Group.link('MiniClueBorder', groups.FloatBorder)


