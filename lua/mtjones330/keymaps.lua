-- Shorten function name
local keymap = vim.keymap.set

-- Silent keymap option
local opts = { silent = true }

-- Press kj fast to exit Insert mode
keymap("i", "kj", "<ESC>", opts)

-- Window Navigation

keymap("n", "<leader>v", "<C-w>v", opts)
keymap("n", "<leader>s", "<C-w>s", opts)
keymap("n", "<leader>q", "<cmd>q<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<leader>gg", "<cmd>lua _TOGGLE_LAZYGIT()<CR>", opts)