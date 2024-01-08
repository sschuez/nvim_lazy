return {
  { "tpope/vim-commentary" },
  { "tpope/vim-surround" },
  { "tpope/vim-ragtag" },
  { "mg979/vim-visual-multi" },
  { "akinsho/toggleterm.nvim", version = "*", config = true },
  {
    "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "pass show nvim_gpt",
        openai_params = {
          model = "gpt-4-1106-preview",
          --   frequency_penalty = 0,
          --   presence_penalty = 0,
          --   max_tokens = 1000,
          --   temperature = 3,
          --   top_p = 1,
          --   n = 1,
        },
        openai_edit_params = {
          model = "gpt-4-1106-preview",
          --   frequency_penalty = 0,
          --   presence_penalty = 0,
          --   temperature = 0,
          --   top_p = 1,
          --   n = 1,
        },
      })
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim",
    },
  },
}
