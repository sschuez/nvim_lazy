-- Keep track of whether Copilot is enabled
-- Initialize the variable based on whether you want Copilot to be enabled or disabled by default
_G.is_copilot_enabled = true
local function toggle_copilot()
  if _G.is_copilot_enabled then
    -- Copilot is currently enabled, so disable it
    vim.cmd("Copilot disable")
    _G.is_copilot_enabled = false
    print("Copilot disabled")
  else
    -- Copilot is currently disabled, so enable it
    vim.cmd("Copilot enable")
    _G.is_copilot_enabled = true
    print("Copilot enabled")
  end
end
-- Add the toggle command to Neovim
vim.api.nvim_create_user_command("ToggleCopilot", toggle_copilot, {})
