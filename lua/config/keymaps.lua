-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Adding custom key mappings for oo and OO
vim.keymap.set("n", "Y", "y$", { desc = "Yank to end of line" })

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

-- -- Toggle Copliot
-- vim.api.nvim_set_keymap("n", "<Leader>m", ":Copilot toggle<CR>", { noremap = true, silent = true })

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
