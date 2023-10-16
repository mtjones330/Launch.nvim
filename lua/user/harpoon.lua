local M = {
  "ThePrimeagen/harpoon",
  commit = "c1aebbad9e3d13f20bedb8f2ce8b3a94e39e424a",
  event = "VeryLazy",
}

function M.config()
  require("harpoon").setup {}
end

return M
