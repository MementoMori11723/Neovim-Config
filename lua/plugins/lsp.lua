-- plugins : for lsp support.

-- mason : it's used to install lsp's.
-- mason-lspconfig : this is a driver to make a connection between mason and neovim.
-- nvim-lspconfig : this will allow us to have lsp support in neovim.
-- none-ls : it uses lsp's to give functionality like formatting and debugging. 

return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
			vim.keymap.set("n", "<leader>m", ":Mason<CR>", {})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"rust_analyzer",
					"angularls",
					"clangd",
					"cssls",
					"dockerls",
					"gopls",
					"html",
					"tsserver",
					"intelephense",
					"pyright",
					"sqls",
					"tailwindcss",
					"templ",
					"svelte",
					"volar",
					"kotlin_language_server",
					"prismals",
					"jdtls",
					"jsonls",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local opts = { capabilites = capabilities }
			-- lsp setup
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup(opts)
			lspconfig.rust_analyzer.setup(opts)
			lspconfig.angularls.setup(opts)
			lspconfig.clangd.setup(opts)
			lspconfig.cssls.setup(opts)
			lspconfig.dockerls.setup(opts)
			lspconfig.gopls.setup({
				capabilites = capabilities,
				cmd = { "gopls" },
				filetypes = {
					"go",
					"gomod",
					"gowork",
					"gotmpl",
				},
				root_dir = require("lspconfig/util").root_pattern("go.work", "go.mod", ".git"),
				settings = {
					gopls = {
						completeUnimported = true,
						usePlaceholders = true,
						analyses = {
							unusedparams = true,
						},
					},
				},
			})
			lspconfig.html.setup(opts)
			lspconfig.tsserver.setup(opts)
			lspconfig.intelephense.setup(opts)
			lspconfig.pyright.setup(opts)
			lspconfig.sqls.setup(opts)
			lspconfig.tailwindcss.setup(opts)
			lspconfig.templ.setup(opts)
			lspconfig.svelte.setup(opts)
			lspconfig.volar.setup(opts)
			lspconfig.kotlin_language_server.setup(opts)
			lspconfig.prismals.setup(opts)
			lspconfig.jdtls.setup(opts)
			lspconfig.jsonls.setup(opts)
			lspconfig.yamlls.setup(opts)

			-- keybindings
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
	{
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
	},
}
