return {
	"saghen/blink.cmp",
	opts = {
		fuzzy = { implementation = "lua" },
		keymap = {
			preset = 'none',
			['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
			['<C-e>'] = { 'hide' },
			['<CR>'] = { 'accept', 'fallback' },

			['<Tab>'] = { 'select_next', 'snippet_forward', 'fallback' },
			['<S-Tab>'] = { 'select_prev', 'snippet_backward', 'fallback' },

			['<C-d>'] = { 'scroll_documentation_up', 'fallback' },
			['<C-f>'] = { 'scroll_documentation_down', 'fallback' },
		},
		completion = {
			menu = {
				winblend = vim.o.pumblend,
			},
		},
		signature = {
			window = {
				winblend = vim.o.pumblend,
			},
		},
	},
}
