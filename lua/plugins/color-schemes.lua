-- vim.o.background = "dark"
-- vim.o.background = "light"
-- vim.cmd([[colorscheme nord]])
-- vim.cmd([[colorscheme jellybeans-nvim]])
-- vim.cmd([[colorscheme nord]])

return {
  -- Determin Default Theme here
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      -- colorscheme = "catppuccin-latte",
      -- colorscheme = "solarized",
      -- colorscheme = "everforest",
    },
  },
  {
    "maxmx03/solarized.nvim",
    lazy = false,
    name = "solarized",
    priority = 1000,
    config = function()
      -- vim.o.background = "light"
      -- vim.o.background = "dark"
    end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require("everforest").setup({
        -- Your config here
      })
    end,
  },
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
      require("jellybeans").setup({})
      -- vim.cmd([[colorscheme jellybeans-nvim]])
    end,
  },
  {
    "shaunsingh/nord.nvim",
    name = "nord",
    config = function()
      -- vim.o.background = "dark"
      -- vim.cmd([[colorscheme nord]])
    end,
  },
}
