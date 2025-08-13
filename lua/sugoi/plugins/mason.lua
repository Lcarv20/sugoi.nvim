local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

Group.link('MasonNormal', groups.Normal)
Group.new('MasonHeader', colors.secondary, colors.sugoi_9)
Group.new('MasonHeaderSecondary', colors.secondary)
Group.new('MasonHighlight', colors.primary)
Group.new('MasonHighlightBlock', colors.primary)
Group.new('MasonHighlightBlockBold', colors.secondary, colors.sugoi_9)
Group.new('MasonHighlightSecondary', colors.primary)
Group.new('MasonHighlightBlockSecondary', colors.primary)
Group.new('MasonHighlightBlockBoldSecondary', colors.secondary, colors.sugoi_9)
Group.new('MasonMuted', colors.sugoi_5)
Group.new('MasonMutedBlock', colors.sugoi_5)
Group.new('MasonMutedBlockBold', colors.sugoi_5)
Group.new('MasonError', colors.diff_delete)

