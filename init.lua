-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Put explorer to the right
require("neo-tree").setup({
  window = {
    position = "right",
  },
})
