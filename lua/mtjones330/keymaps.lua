-- Shorten function name
local keymap = vim.keymap.set

-- Silent keymap option
local opts = { silent = true }

-- Press kj fast to exit Insert mode
keymap("i", "kj", "<ESC>", opts)

-- Press kj fast to exit Terminal mode
keymap("t", "kj", "<C-\\><C-n>", opts)

-- Move text up and down
keymap("v", "K", ":m '<-2<CR>gv=gv")
keymap("v", "J", ":m '>+1<CR>gv=gv")

-- Window Navigation
keymap("n", "<leader>v", "<C-w>v", opts)
keymap("n", "<leader>s", "<C-w>s", opts)
keymap("n", "<leader>q", "<cmd>q<CR>", opts)

keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrows
keymap("n", "<leader><Up>", ":resize +16<cr>", opts)
keymap("n", "<leader><Down>", ":resize -16<CR>", opts)
keymap("n", "<leader><Left>", ":vertical resize -16<CR>", opts)
keymap("n", "<leader><Right>", ":vertical resize +16<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)
keymap("n", "<S-q>", "<cmd>Bdelete!<CR>", opts)

-- Lsp
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.format{ async = true }<cr>", opts)

-- Lazygit
keymap("n", "<leader>gg", "<cmd>lua _TOGGLE_LAZYGIT()<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>ft", ":Telescope live_grep<CR>", opts)
keymap("n", "<leader>fp", ":Telescope projects<CR>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<CR>", opts)

keymap("n", "gd", ":Telescope lsp_definitions<CR>", opts)
keymap("n", "gr", ":Telescope lsp_references<CR>", opts)
keymap("n", "gi", ":Telescope lsp_implementations<CR>", opts)

-- Harpoon
keymap("n", "<leader><leader>", "<cmd>:lua require('harpoon.ui').toggle_quick_menu()<CR>", opts)
keymap("n", "<leader>a", "<cmd>lua require('harpoon.mark').add_file()<CR>", opts)
keymap("n", "<leader>1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", opts)
keymap("n", "<leader>2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", opts)
keymap("n", "<leader>3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", opts)
keymap("n", "<leader>4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", opts)
keymap("n", "<leader>5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", opts)