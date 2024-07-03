-- local cmp = require("cmp")
-- -- Keep track of whether autocomplete is enabled globally
-- _G.cmp_enabled = true
-- -- Function to toggle the autocomplete functionality globally
-- local function toggle_cmp()
--   _G.cmp_enabled = not _G.cmp_enabled
--   if _G.cmp_enabled then
--     -- Enable completion globally
--     cmp.setup({
--       -- Your default cmp setup configuration here
--       -- (Make sure to include all your sources and settings)
--     })
--     print("Autocomplete enabled globally")
--   else
--     -- Disable completion globally
--     cmp.setup({
--       enabled = false,
--     })
--     print("Autocomplete disabled globally")
--   end
-- end
-- -- Add the toggle command to Neovim
-- vim.api.nvim_create_user_command("ToggleCmp", toggle_cmp, {})
-- -- Set up an autocmd to apply the enabled/disabled state to each new buffer
-- vim.api.nvim_create_autocmd("BufEnter", {
--   callback = function()
--     -- Apply the current global state to the entered buffer
--     cmp.setup.buffer({ enabled = _G.cmp_enabled })
--   end,
-- })

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
