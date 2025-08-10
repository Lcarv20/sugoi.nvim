local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups
local colors = cb.colors

Group.link('MasonNormal', groups.Normal)
Group.new('MasonHeader', colors.secondary, colors.neutral_9)
Group.new('MasonHeaderSecondary', colors.secondary)
Group.new('MasonHighlight', colors.primary)
Group.new('MasonHighlightBlock', colors.primary)
Group.new('MasonHighlightBlockBold', colors.secondary, colors.neutral_9)
Group.new('MasonHighlightSecondary', colors.primary)
Group.new('MasonHighlightBlockSecondary', colors.primary)
Group.new('MasonHighlightBlockBoldSecondary', colors.secondary, colors.neutral_9)
Group.new('MasonMuted', colors.neutral_5)
Group.new('MasonMutedBlock', colors.neutral_5)
Group.new('MasonMutedBlockBold', colors.neutral_5)
Group.new('MasonError', colors.diff_delete)


