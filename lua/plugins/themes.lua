-- plugins: themes
--
-- rose-pine : it's a theme for neovim.

return {
  {
    "github.com/sainnhe/everforest",
  },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine-moon")
		end,
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = true,
    opt = {
      bold = true,
      italic = true,
      underline = true,
      undercurl = true,
      contrast = "hard",
    }
	},
}
