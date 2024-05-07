local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<leader>gg", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
