local cb = require('colorbuddy')
local Group = cb.Group
local groups = cb.groups

Group.link('FlashBackdrop', groups.Comment)
Group.link('FlashMatch', groups.Search)
Group.link('FlashCurrent', groups.IncSearch)
Group.link('FlashLabel', groups.Search)
Group.link('FlashPromptIcon', groups.Special)
Group.link('FlashCursor', groups.Cursor)


