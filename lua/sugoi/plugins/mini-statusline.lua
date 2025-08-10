local cb = require('colorbuddy')
local Group = cb.Group
local colors = cb.colors

Group.new('MiniStatuslineModeNormal', colors.neutral_2, colors.neutral_7)
Group.new('MiniStatuslineModeInsert', colors.background, colors.primary)
Group.new('MiniStatuslineModeVisual', colors.background, colors.secondary)
Group.new('MiniStatuslineModeReplace', colors.background, colors.primary)
Group.new('MiniStatuslineModeCommand', colors.neutral_2, colors.neutral_7)
Group.new('MiniStatuslineModeOther', colors.neutral_2, colors.neutral_7)

Group.new('MiniStatuslineDevinfo', colors.neutral_3, colors.neutral_8)
Group.new('MiniStatuslineFilename', colors.neutral_3, colors.neutral_9)
Group.new('MiniStatuslineFileinfo', colors.neutral_6, colors.neutral_9)

Group.new('MiniStatuslineInactive', colors.neutral_6, colors.neutral_9)


