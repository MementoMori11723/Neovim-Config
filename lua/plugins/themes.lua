-- plugins: themes
--
-- rose-pine : it's a theme for neovim.

return {
  {
    "lancewilhelm/horizon-extended.nvim",
    priority = 1000,
    config = function()
      vim.cmd("colorscheme horizon-extended")
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
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
    },
  },
}
