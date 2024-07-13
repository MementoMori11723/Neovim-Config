return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	ft = { "markdown" },
	build = function()
		vim.fn["mkdp#util#install"]()
	end,
  vim.keymap.set('n','<C-m>',':MarkdownPreviewToggle<CR>',{noremap = true, silent = true})
}
