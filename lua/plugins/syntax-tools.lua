-- plugins for syntax highlighting and code completion.
--
-- autopairs : it will automatically add closing brackets, quotes, etc.
-- nvim-commentary : it will allow you to comment out lines or blocks of code.
-- nvim-lualine : it will show you the status line at the bottom of the screen.
-- nvim-cmp : it will provide you with code completion.
-- nvim-treesitter : it will provide you with syntax highlighting.
-- emmet-vim : it will provide you with code completion for html, css, and javascript.
-- indent-blankline : it will provide you with indentation guides.
-- bufferline : it will provide you with a buffer line at the top of the screen.
-- barbecue : it will provide you with a file explorer.

return {
  -- autopairs
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = true,
  },
  -- nvim-commentary
  {
    "tpope/vim-commentary",
  },
  -- nvim-lualine
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("lualine").setup({
        options = {
          theme = "horizon",
        },
      })
    end,
  },
  -- commentary
  {
    {
      "hrsh7th/cmp-nvim-lsp",
      config = function()
        require("cmp").setup({
          sources = {
            { name = "nvim_lsp" },
          },
        })
      end,
    },
    {
      "L3MON4D3/LuaSnip",
      dependencies = {
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
      },
    },
    {
      "hrsh7th/nvim-cmp",
      config = function()
        local cmp = require("cmp")
        require("luasnip.loaders.from_vscode").lazy_load()
        cmp.setup({
          snippet = {
            expand = function(args)
              -- vim.snippet.expand(args.body)
              require("luasnip").lsp_expand(args.body)
            end,
          },
          window = {
            completion = cmp.config.window.bordered(),
            documentation = cmp.config.window.bordered(),
          },
          mapping = cmp.mapping.preset.insert({
            ["<C-b>"] = cmp.mapping.scroll_docs(-4),
            ["<C-f>"] = cmp.mapping.scroll_docs(4),
            ["<C-Space>"] = cmp.mapping.complete(),
            ["<C-e>"] = cmp.mapping.abort(),
            ["<CR>"] = cmp.mapping.confirm({ select = true }),
          }),
          sources = cmp.config.sources({
            -- { name = "nvim_lsp" },
            -- { name = "vsnip" },
            { name = "luasnip" },
          }, {
            { name = "buffer" },
          }),
        })
      end,
    },
  },
  -- nvim-treesitter
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      -- nvim-treesitter commands
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
  },
  -- emmet-vim
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "javascript", "typescript", "javascriptreact", "typescriptreact", "templ", "tmpl" },
    config = function()
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
  },
  -- indent-blankline
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		opts = {},
	},
  -- bufferline
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = "nvim-tree/nvim-web-devicons",
    config = function()
      require("bufferline").setup({
        options = {
          numbers = "ordinal",
          diagnostics = "nvim_lsp",
          diagnostics_indicator = function(count, level, diagnostics_dict, context)
            return "(" .. count .. ")"
          end,
          show_buffer_close_icons = true,
          show_close_icon = false,
          show_tab_indicators = true,
          separator_style = "thin",
          always_show_bufferline = false,
        },
      })
      vim.keymap.set("n", "<leader>t", ":BufferLineCloseOthers<CR>", { noremap = true, silent = true })
    end,
  },
  -- barbecue
  {
    "utilyre/barbecue.nvim",
    name = "barbecue",
    version = "*",
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons", -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
}
