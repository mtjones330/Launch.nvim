-- Automatically close tab/vim when nvim-tree is the last window in the tab
vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

-- Remove trailing whitespace on InsertLeave
vim.api.nvim_create_autocmd({ "InsertLeave"}, {
  callback = function()
    vim.cmd "%s/\\s\\+$//e"
  end
})