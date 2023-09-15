local M = {
  "ThePrimeagen/harpoon",
  commit = "21f4c47c6803d64ddb934a5b314dcb1b8e7365dc",
  event = "VeryLazy",
}

function M.config()
  require("harpoon").setup {}
end

return M
