local cb = require('colorbuddy')
local Group = cb.Group
local colors = cb.colors

Group.new('gitcommitComment', colors.sugoi_6)
Group.new('gitcommitOnBranch', colors.sugoi_6)
Group.new('gitcommitHeader', colors.sugoi_4)
Group.new('gitcommitOnBranch', colors.sugoi_5)
Group.new('gitcommitSelectedType', colors.primary)
Group.new('gitcommitSelectedFile', colors.primary)
Group.new('gitcommitDiscardedType', colors.sugoi_0)
Group.new('gitcommitDiscardedFile', colors.sugoi_0)
Group.new('gitcommitUntrackedFile', colors.primary)
Group.new('diffLine', colors.diff_change)
Group.new('diffSubname', colors.sugoi_6)
Group.new('diffAdded', colors.diff_add)
Group.new('diffRemoved', colors.diff_delete)
Group.new('fugitiveHunk', colors.sugoi_6)


