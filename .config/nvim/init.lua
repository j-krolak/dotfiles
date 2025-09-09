-- Set leader key
vim.g.mapleader = " "

-- Basic settings
vim.o.number = true
vim.o.relativenumber = true
vim.o.expandtab = true
vim.o.shiftwidth = 2
vim.o.tabstop = 2

-- Keymaps
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
local x = 0
print(x)

-- Telescope
-- vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")
-- vim.keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<CR>")
-- vim.keymap.set('n', '<leader>fb', '<cmd>Telescope buffers<cr>', { desc = "List Buffers" })

require("config.lazy")

