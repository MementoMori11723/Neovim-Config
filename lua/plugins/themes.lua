-- plugins: themes
--
-- catppuccino.nvim : a nordish colorscheme for neovim

return {
  "eldritch-theme/eldritch.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("eldritch").setup()
    vim.cmd("colorscheme eldritch")
  end,
}

