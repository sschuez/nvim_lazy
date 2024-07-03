-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Adding custom key mappings for oo and OO
-- vim.api.nvim_set_keymap("n", "oo", ':<C-u>call append(line("."), "")<CR>', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap("n", "OO", ':<C-u>call append(line(".")-1, "")<CR>', { noremap = true, silent = true })
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Explore, { desc = "Open NetRW" })

--keymaps for vim-tmux-navigator
-- vim.api.nvim_set_keymap('n', '<C-h>', '<C-\\><C-N><C-w>h', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-j>', '<C-\\><C-N><C-w>j', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-k>', '<C-\\><C-N><C-w>k', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-l>', '<C-\\><C-N><C-w>l', { noremap = true, silent = true })

-- Resize window using <ctrl> shift arrow keys
vim.keymap.set("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height" })
vim.keymap.set("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height" })
vim.keymap.set("n", "<C-S-Left>", "<cmd>vertical resize +2<cr>", { desc = "Decrease window width" })
vim.keymap.set("n", "<C-S-Right>", "<cmd>vertical resize -2<cr>", { desc = "Increase window width" })

-- Toggle spell checking
vim.api.nvim_set_keymap("n", "<Leader>j", ":set nospell<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<Leader>h", ":set spell<CR>", { noremap = true, silent = true })

-- Toggle ZenMode
vim.api.nvim_set_keymap("n", "<Leader>z", ":ZenMode<CR>", { noremap = true, silent = true })

-- Toggle Copliot
vim.api.nvim_set_keymap("n", "<Leader>m", ":Copilot toggle<CR>", { noremap = true, silent = true })

-- Toggle CMP
-- Initialize the variable for toggling
vim.g.cmp_toggle = true

-- Setup nvim-cmp
local cmp = require("cmp")
cmp.setup({
  enabled = function()
    return vim.g.cmp_toggle
  end,
  mapping = {
    ["<C-Space>"] = cmp.mapping.complete(),
  },
})

-- Function to toggle nvim-cmp
function ToggleCMP()
  vim.g.cmp_toggle = not vim.g.cmp_toggle
  local status = vim.g.cmp_toggle and "enabled" or "disabled"
  require("notify")("CMP is now " .. status, "info")
end

-- Map <Leader>n to toggle nvim-cmp
vim.api.nvim_set_keymap("n", "<Leader>n", ":lua ToggleCMP()<CR>", { noremap = true, silent = true })

-- Function to toggle spell checking using direct commands
function ToggleSpell()
  if vim.o.spell then
    vim.cmd("set nospell")
    print("Spell check disabled")
  else
    vim.cmd("set spell")
    print("Spell check enabled")
  end
end

-- Key mapping to toggle spell checking
vim.api.nvim_set_keymap("n", "<leader>s", ":lua ToggleSpell()<CR>", { noremap = true, silent = true })
