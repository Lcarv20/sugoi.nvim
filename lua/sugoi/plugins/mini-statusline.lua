local cb = require('colorbuddy')
local Group = cb.Group
local colors = cb.colors

Group.new('MiniStatuslineModeNormal', colors.sugoi_2, colors.sugoi_7)
Group.new('MiniStatuslineModeInsert', colors.background, colors.primary)
Group.new('MiniStatuslineModeVisual', colors.background, colors.secondary)
Group.new('MiniStatuslineModeReplace', colors.background, colors.primary)
Group.new('MiniStatuslineModeCommand', colors.sugoi_2, colors.sugoi_7)
Group.new('MiniStatuslineModeOther', colors.sugoi_2, colors.sugoi_7)

Group.new('MiniStatuslineDevinfo', colors.sugoi_3, colors.sugoi_8)
Group.new('MiniStatuslineFilename', colors.sugoi_3, colors.sugoi_9)
Group.new('MiniStatuslineFileinfo', colors.sugoi_6, colors.sugoi_9)

Group.new('MiniStatuslineInactive', colors.sugoi_6, colors.sugoi_9)


