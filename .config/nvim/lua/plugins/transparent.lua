return {
	"xiyaowong/transparent.nvim",
	config = function()
		require("transparent").setup({
			extra_groups = {
				"NormalFloat",
				"NvimTreeNormal",
				"TelescopeNormal",
				"TelescopeBorder",
				"TelescopePromptNormal",
				"TelescopePromptBorder",
				"TelescopePromptTitle",
				"TelescopePreviewTitle",
				"TelescopeResultsTitle",
				"TelescopeSelection",
			},
		})
		require('transparent').clear_prefix('NeoTree')
	end,
}
