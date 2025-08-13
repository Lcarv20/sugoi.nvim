local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

Group.new('MiniClueNextKey', colors.primary)
Group.new('MiniClueSeparator', colors.sugoi_8)
Group.new('MiniClueDescGroup', colors.secondary)
Group.new('MiniClueDescSingle', colors.sugoi_3)
Group.link('MiniClueTitle', groups.FloatTitle)
Group.link('MiniClueBorder', groups.FloatBorder)


