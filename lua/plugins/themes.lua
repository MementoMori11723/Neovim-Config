-- plugins : for themes.
--
-- everforest : A green based theme.

return {
  "sainnhe/everforest",
  config = function()
    vim.g.everforest_background = "hard"
    vim.g.everforest_enable_italic = 1
    vim.g.everforest_disable_italic_comment = 1
    vim.g.everforest_disable_background = 0
    vim.g.everforest_cursor_color = 0
    vim.g.everforest_better_performance = 1
    vim.g.everforest_sign_column_background = "none"
    vim.g.everforest_better_performance = 1
    vim.g.everforest_sign_column_background = "none"
    vim.cmd("colorscheme everforest")
  end
}
