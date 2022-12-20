vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>")
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "x", '"_x')

keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>w", "<C-w>w")

-- tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

vim.keymap.set("n", "<leader>t", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>w", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<C-tab>", ":tabn<CR>") --  go to next tab
vim.keymap.set("n", "<C-S-tab>", ":tabp<CR>") --  go to previous tab
