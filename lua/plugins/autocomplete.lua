local cmp = require("cmp")
-- Keep track of whether autocomplete is enabled
local cmp_enabled = true
-- Function to toggle the autocomplete functionality
local function toggle_cmp()
  cmp_enabled = not cmp_enabled
  if cmp_enabled then
    -- Enable completion for the current buffer
    cmp.setup.buffer({ enabled = true })
    print("Autocomplete enabled")
  else
    -- Disable completion for the current buffer
    cmp.setup.buffer({ enabled = false })
    print("Autocomplete disabled")
  end
end
-- Add the toggle command to Neovim
vim.api.nvim_create_user_command("ToggleCmp", toggle_cmp, {})

return {

  -- override nvim-cmp and add cmp-emoji
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, { name = "emoji" })
    end,
  },
}
