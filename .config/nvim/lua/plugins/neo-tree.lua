return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	lazy = false, -- Load immediately on startup
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	config = function()
		require("neo-tree").setup({
			filesystem = {
				follow_current_file = {
					enabled = true,
				},

				filters = {
					dotfiles = false
				}
			},
			event_handlers = {
				{
					event = "file_opened",
					handler = function()
						-- Auto close via command
						require("neo-tree.command").execute({ action = "close" })
					end
				},
			},
		})

		-- Keymap
		vim.keymap.set('n', '<leader>e', ':Neotree toggle<CR>')
	end,
}
