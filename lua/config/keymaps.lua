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
