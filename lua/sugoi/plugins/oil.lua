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

-- Add backdrop for oil
local blend = 50

vim.api.nvim_create_autocmd("FileType", {
	pattern = "oil",
	callback = function(ctx)
		cb = require("colorbuddy")
		Group = cb.Group
		colors = cb.colors

		local backdropName = "OilBackdrop"
		local oilBufnr = ctx.buf

		-- Oil uses zindex 40: https://github.com/stevearc/oil.nvim/blob/master/lua/oil/init.lua#L191
		local oilZindex = 40

		local backdropBufnr = vim.api.nvim_create_buf(false, true)
		local winnr = vim.api.nvim_open_win(backdropBufnr, false, {
			relative = "editor",
			border = "none",
			row = 0,
			col = 0,
			width = vim.o.columns,
			height = vim.o.lines,
			focusable = false,
			style = "minimal",
			zindex = oilZindex - 1, -- ensure it's below the reference window
		})

		vim.api.nvim_set_hl(0, backdropName, { bg = "#000000", default = true })
		vim.wo[winnr].winhighlight = "Normal:" .. backdropName
		vim.wo[winnr].winblend = blend
		vim.bo[backdropBufnr].buftype = "nofile"

		-- close backdrop when the reference buffer is closed
		vim.api.nvim_create_autocmd({ "WinClosed", "BufLeave" }, {
			once = true,
			buffer = oilBufnr,
			callback = function()
				if vim.api.nvim_win_is_valid(winnr) then
					vim.api.nvim_win_close(winnr, true)
				end
				if vim.api.nvim_buf_is_valid(backdropBufnr) then
					vim.api.nvim_buf_delete(backdropBufnr, { force = true })
				end
			end,
		})
	end,
})
