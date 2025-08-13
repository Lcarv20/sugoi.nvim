local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

Group.new('TelescopeTitle', colors.sugoi_2)
Group.new('TelescopeResultsNormal', colors.sugoi_5)
-- Ensure telescope separators pick up secondary via FloatBorder
Group.new('TelescopeMatching', colors.sugoi_0)
Group.new('TelescopePromptCounter', colors.sugoi_8, nil)
Group.link('TelescopeBorder', groups.FloatBorder)
Group.link('TelescopePromptBorder', groups.FloatBorder)
Group.link('TelescopeResultsBorder', groups.FloatBorder)
Group.link('TelescopePreviewBorder', groups.FloatBorder)


