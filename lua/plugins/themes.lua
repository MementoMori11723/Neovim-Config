-- plugins: themes
--
-- tokyonight.nvim : A clean, dark Neovim theme written in Lua, with support for LSP, Treesitter and more.

return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {},
  config = function()
    require("tokyonight").setup({})
    vim.cmd("colorscheme tokyonight-night")
  end,
}

