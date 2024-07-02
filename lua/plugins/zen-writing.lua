local function run_script(script_path)
  local result = os.execute("bash " .. script_path)
  if result ~= 0 then
    print("Error executing script: " .. script_path)
  end
end

return {
  {
    "folke/zen-mode.nvim",
    opts = {
      window = {
        backdrop = 1, -- shade the backdrop of the Zen window
        width = 120, -- width of the Zen window
        height = 0.9, -- height of the Zen window as a percentage of the editor height
        options = {
          -- signcolumn = "no", -- disable signcolumn
          -- number = false, -- disable number column
          -- relativenumber = false, -- disable relative numbers
          -- cursorline = false, -- disable cursorline
          -- cursorcolumn = false, -- disable cursor column
          -- foldcolumn = "0", -- disable fold column
          -- list = false, -- disable whitespace characters
        },
      },
      plugins = {
        options = {
          enabled = true,
          ruler = false, -- disables the ruler text in the cmd line area
          showcmd = false, -- disables the command in the last line of the screen
          laststatus = 0, -- turn off the statusline in zen mode
        },
        gitsigns = { enabled = true }, -- disables git signs
        tmux = { enabled = true }, -- disables the tmux statusline
        -- this will change the font size on alacritty when in zen mode
        -- uses `alacritty msg` subcommand to change font size
        alacritty = {
          enabled = true,
          font = "20", -- font size
        },
        -- -- this will change the font size on wezterm when in zen mode
        -- wezterm = {
        --   enabled = false,
        --   font = "+4", -- (10% increase per step)
        -- },
      },
      on_open = function(win)
        -- Run the script to increase font size
        run_script("~/code/dotfiles/scripts/large_font.sh")
      end,
      on_close = function()
        -- Run the script to decrease font size
        run_script("~/code/dotfiles/scripts/small_font.sh")
      end,
    },
  },
  -- Map a key for easy toggling
  vim.api.nvim_set_keymap("n", "<Leader>z", ":ZenMode<CR>", { noremap = true, silent = true }),
}
