-- installing catppuccin
return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  config = function()
    -- theme commands
    require("catppuccin").setup({
      flavour = "mocha"
    })
    -- vim.cmd.colorscheme "catppuccin"
  end
}
