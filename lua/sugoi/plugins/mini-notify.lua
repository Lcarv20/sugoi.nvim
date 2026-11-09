local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups

Group.link('MiniNotifyBorder', groups.FloatBorder)
Group.link('MiniNotifyNormal', groups.NormalFloat)
Group.link('MiniNotifyTitle', groups.FloatTitle)

