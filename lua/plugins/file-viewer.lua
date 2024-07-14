-- plugins : for file viewer.
--
-- nvim-neo-tree : A file viewer for neovim.
-- nvim-lua/plenary.nvim : A lua library for neovim.
-- nvim-tree/nvim-web-devicons : A file viewer for neovim.
-- MunifTanjim/nui.nvim : A UI library for neovim.
-- 3rd/image.nvim : A image viewer for neovim.

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
      window = {
        position = "right",
        size = 40,
        focus = true,
        quit_on_open = false,
        side = "vertical",
      },
		})
    vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { noremap = true, silent = true })
	end,
}
