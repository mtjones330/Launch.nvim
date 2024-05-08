local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)

-- Press kj fast to exit Insert mode
keymap("i", "kj", "<ESC>", opts)

-- Press kj fast to exit Terminal mode
keymap("t", "kj", "<C-\\><C-n>", opts)
