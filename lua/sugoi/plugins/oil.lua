local cb = require("colorbuddy")
local Group = cb.Group
local colors = cb.colors

Group.new("OilDir", colors.sugoi_0)
Group.new("OilFile", colors.sugoi_4)
Group.new("OilLink", colors.primary)
Group.new("OilCopy", colors.diff_add)
Group.new("OilCreate", colors.diff_add)
Group.new("OilChange", colors.diff_change)
Group.new("OilMove", colors.diff_change)
Group.new("OilDelete", colors.diff_delete)


