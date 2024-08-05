-- plugins: themes
--
-- rose-pine : it's a theme for neovim.

return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    vim.cmd("colorscheme rose-pine-moon")
  end,
}

