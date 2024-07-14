-- Plugins : Windows specific Plugins

-- markdown-preview.nvim : Preview markdown files in browser
-- telescope.nvim : Fuzzy finder for neovim
-- telescope-ui-select.nvim : UI for telescope

return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		ft = { "markdown" },
		build = function()
			vim.fn["mkdp#util#install"]()
		end,
		vim.keymap.set("n", "<C-m>", ":MarkdownPreviewToggle<CR>", { noremap = true, silent = true }),
	},
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = {
			"nvim-lua/plenary.nvim",
		},
		config = function()
			-- telescope commands
			local builtin = require("telescope.builtin")
			-- keymaps
			vim.keymap.set("n", "<C-p>", builtin.find_files, {})
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
