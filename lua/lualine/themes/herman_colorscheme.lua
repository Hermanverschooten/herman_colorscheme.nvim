-- Copyright (c) 2020-2021 Mofiqul Islam
-- Copyright (c) 2021 Herman verschooten
-- MIT license, see LICENSE for more details.
local herman_colorscheme = {}
local colors = {}

if(vim.g.herman_colorscheme_style == "dark") then
	colors.bg        	= "#262626"
	colors.fg       	= '#ffffff'
	colors.red          = '#f44747'
	colors.green        = '#619955'
	colors.blue         = '#0a7aca'
	colors.lightblue    = '#5CB6F8'
	colors.yellow       = '#ffaf00'
else
	colors.bg        	= "#E5EBF1"
	colors.fg        	= '#343434'
	colors.red          = '#FF0000'
	colors.green        = '#008000'
	colors.blue         = '#AF00DB'
	colors.lightblue    = '#0451A5'
	colors.yellow       = '#ffaf00'
end

herman_colorscheme.normal = {
  	b = {fg = colors.blue, bg = colors.bg},
	a = {fg = vim.g.herman_colorscheme_style == "dark" and colors.fg or colors.bg , bg = colors.blue, gui = 'bold'},
  	c = {fg = colors.fg, bg = colors.bg}
}

herman_colorscheme.visual = {
  	a = {fg = colors.bg, bg = colors.lightblue, gui = 'bold'},
  	b = {fg = colors.lightblue, bg = colors.bg},
}

herman_colorscheme.inactive = {
	b = {fg = colors.bg, bg = colors.fg},
  	a = {fg = colors.fg, bg = colors.gray, gui = 'bold'}
}

herman_colorscheme.replace = {
  	b = {fg = colors.yellow, bg = colors.bg},
  	a = {fg = vim.g.herman_colorscheme_style == "dark" and colors.bg or colors.fg, bg = colors.yellow, gui = 'bold'},
  	c = {fg = colors.fg, bg = colors.bg}
}

herman_colorscheme.insert = {
 	a = {fg = vim.g.herman_colorscheme_style == "dark" and colors.bg or colors.fg, bg = colors.yellow, gui = 'bold'},
  	b = {fg = colors.yellow, bg = colors.bg},
  	c = {fg = colors.fg, bg = colors.bg}
}

return herman_colorscheme

