-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
-- require("treesitter-context").toggle()

-- Automatically load all custom configuration files
local custom_config_path = vim.api.nvim_get_runtime_file("lua/custom/*.lua", true)
for _, file in ipairs(custom_config_path) do
  local filename = file:match("^.+/(.+).lua$")
  if filename then
    require("custom." .. filename)
  end
end
