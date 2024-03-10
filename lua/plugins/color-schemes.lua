return {
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        -- configurations
      })
    end,
    opts = {
      -- configurations
    },
  },
  { "ellisonleao/gruvbox.nvim" },
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    },
  },
  {
    "navarasu/onedark.nvim",
    config = function()
      require("onedark").setup({
        -- Place your configuration options here
        style = "dark",
      })
      -- require("onedark").load()
    end,
  },
  {
    "drewtempelmeyer/palenight.vim",
    config = function() end,
  },
  {
    "rktjmp/lush.nvim",
  },
  {
    "metalelf0/jellybeans-nvim",
    config = function()
      -- require("jellybeans").setup({})

      -- vim.cmd([[colorscheme jellybeans-nvim]])
    end,
  },
  {
    "shaunsingh/nord.nvim",
    config = function()
      -- vim.cmd([[colorscheme nord]])
    end,
  },
}
