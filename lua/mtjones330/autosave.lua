local M = {
  "Pocco81/auto-save.nvim",
  event = "VimEnter"
}

function M.config()

  local autosave = require("auto-save")

  autosave.setup({
    enabled = true,
    execution_message = nil,
    events = {"InsertLeave" , "TextChanged"},
    conditions = {
      exists = true,
      filename_is_not = {},
      filetype_is_not = {},
      modifiable = true
    },
    write_all_buffers = false,
    on_off_commands = true,
    clean_command_line_interval = 0,
    debounce_delay = 135
  })

end

return M
