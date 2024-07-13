return {
  "mattn/emmet-vim",
  ft = {"html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact"},
  config = function()
    vim.g.user_emmet_leader_key = ","
    vim.g.user_emmet_settings = {
      javascript = {
        extends = "jsx",
      },
      typescript = {
        extends = "jsx",
      },
      javascriptreact = {
        extends = "jsx",
      },
      typescriptreact = {
        extends = "jsx",
      },
    }
  end,
}
