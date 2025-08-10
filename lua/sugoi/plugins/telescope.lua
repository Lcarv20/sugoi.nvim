local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

Group.new('TelescopeTitle', colors.neutral_2)
Group.new('TelescopeResultsNormal', colors.neutral_5)
-- Ensure telescope separators pick up secondary via FloatBorder
Group.new('TelescopeMatching', colors.neutral_0)
Group.new('TelescopePromptCounter', colors.neutral_8, nil)
Group.link('TelescopeBorder', groups.FloatBorder)
Group.link('TelescopePromptBorder', groups.FloatBorder)
Group.link('TelescopeResultsBorder', groups.FloatBorder)
Group.link('TelescopePreviewBorder', groups.FloatBorder)


