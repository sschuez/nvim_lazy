return {
  {
    "akinsho/toggleterm.nvim",
    enabled = false,
    cmd = "ToggleTerm",
    config = function()
      require("toggleterm").setup({
        size = function(term)
          if term.direction == "horizontal" then
            return 30
          elseif term.direction == "vertical" then
            return vim.o.columns * 0.4
          end
        end,
        open_mapping = [[<c-\>]],
      })
      -- Key mapping to split the existing terminal horizontally
      vim.api.nvim_set_keymap(
        "n",
        "<th>",
        "<cmd>2ToggleTerm direction=horizontal<CR>",
        { noremap = true, silent = true }
      )
      vim.api.nvim_set_keymap(
        "t",
        "<C-t>",
        "<C-\\><C-n><cmd>2ToggleTerm direction=horizontal<CR>",
        { noremap = true, silent = true }
      )
    end,
  },
}
