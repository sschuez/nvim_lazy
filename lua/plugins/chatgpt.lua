return {
  {
    "jackMort/ChatGPT.nvim",
    enabled = true,
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup({
        api_key_cmd = "bash /Users/stephenschuz/.config/print_api_key.sh",
        openai_params = {
          model = "gpt-4o",
        },
        openai_edit_params = {
          model = "gpt-4o",
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
