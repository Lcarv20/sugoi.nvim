local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups

Group.link('SignifySignAdd', groups.DiffAdd)
Group.link('SignifySignChange', groups.DiffChange)
Group.link('SignifySignDelete', groups.DiffDelete)


