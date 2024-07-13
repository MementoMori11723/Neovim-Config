return {
  "nvimtools/none-ls.nvim",
  config = function()
    local null_ls = require("null-ls")
    null_ls.setup({
      sources = {
        -- formatters
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.sqlfmt,
        null_ls.builtins.formatting.black,
        null_ls.builtins.formatting.isort,
        -- diagnostics
        null_ls.builtins.diagnostics.semgrep,
      },
    })
    vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})
  end,
}
