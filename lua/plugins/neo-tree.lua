--installing neo-tree
return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
    "3rd/image.nvim",
	},
	config = function()
		-- neo-tree commands
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = {
					enabled = true,
				},
        use_libuv_file_watcher = true,
			},
		})

    -- keymap
		vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
