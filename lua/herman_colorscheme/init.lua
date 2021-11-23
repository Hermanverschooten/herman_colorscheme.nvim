-- herman_colorscheme.nvim color scheme

local utils = require("herman_colorscheme.utils")
local herman_colorscheme = {}


herman_colorscheme.set = function ()
	utils.load()
end

herman_colorscheme.change_style = function (style)
     vim.g.herman_colorscheme_style = style
     print("herman_colorscheme style: ", style)
	 vim.cmd[[colorscheme herman_colorscheme]]
end

return herman_colorscheme

